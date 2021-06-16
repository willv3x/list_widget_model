import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CommonListWidget<T> extends StatelessWidget {
  final List<T> list;
  final bool reverseList;
  final Future<void> Function() onRefresh;
  final Future<void> Function() onLoadMore;
  final Widget Function(BuildContext context) buildEmptyMessageWidget;
  final Widget Function(BuildContext context, int index) buildListItemWidget;

  // Distancia para o final do scroll da lista para executar o loadMore. Essa distancia
  // deve ser uma porcentagem da altura da tela, para manter comportamento proporcional
  // em todos os dispositivos
  final double heightPercentageOffsetToLoadMore;

  CommonListWidget({
    Key key,
    @required this.list,
    @required this.onRefresh,
    @required this.onLoadMore,
    @required this.buildEmptyMessageWidget,
    @required this.buildListItemWidget,
    this.reverseList = false,
    this.heightPercentageOffsetToLoadMore = 0.40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollNotification) => _onScrollNotification(scrollNotification),
      child: RefreshIndicator(
        onRefresh: () async => await this.onRefresh(), // Força o refresh indicator esperar o Future do onRefresh concluir
        child: _handleBuildList(context),
      ),
    );
  }

  Widget _handleBuildList(BuildContext context) {
    if (list == null || list.isEmpty) {
      return buildEmptyMessageWidget(context);
    }
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return this.buildListItemWidget(context, index);
      },
      reverse: this.reverseList,
    );
  }

  bool _onScrollNotification(ScrollNotification scrollNotification) {
    // Detectar os casos em que a lista inicial for menor que a altura da tela do aparelho
    bool listIsToSmallToScroll = scrollNotification.metrics.extentBefore == 0 && scrollNotification.metrics.extentAfter == 0;
    // Detectar se o gesto do usuário foi para load more
    bool userGestureIsToLoadMore = _userGestureIsToLoadMore(scrollNotification);
    // Se o gesto do usuário foi para baixo, é para executar load more
    if (userGestureIsToLoadMore) {
      if (listIsToSmallToScroll) {
        onLoadMore(); // Se for uma lista menor que a altura da tela do dispositivo, executa Load More direto
      } else {
        double contentBelowViewportHeight = scrollNotification.metrics.extentAfter;
        double offsetToCallNextPage = heightPercentageOffsetToLoadMore * scrollNotification.metrics.viewportDimension;

        if (contentBelowViewportHeight < offsetToCallNextPage) {
          onLoadMore(); // Executa Load More ao estar próximo [heightPercentageOffsetToLoadMore]% do final da lista
        }
      }
    }
    /*
      Retornar true para informar ao NotificationListener que
      a scrollNotification foi consumida e não deve ser repassada
      adiante na árvore de widgets
     */
    return true;
  }

  // Determina se o gesto de scroll do usuário é de load more
  // Um gesto será para load more quando o usuário scrollar a lista em direção ao final dela
  // Se a lista estiver com reverse = true setado, então a direção do gesto para load more será forward
  // E se reverse = false, a direção será reverse (scrollDirection é invertido)
  bool _userGestureIsToLoadMore(ScrollNotification scrollNotification) {
    if (this.reverseList) {
      return (scrollNotification is UserScrollNotification && scrollNotification.direction == ScrollDirection.forward);
    }
    return (scrollNotification is UserScrollNotification && scrollNotification.direction == ScrollDirection.reverse);
  }
}
