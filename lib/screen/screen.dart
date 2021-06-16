import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:list_widget_model/controller/controller.dart';
import 'package:list_widget_model/repository/repository.dart';
import 'package:list_widget_model/widget/common_list_widget.dart';

class Screen extends StatelessWidget {
  final Controller controller = Controller(Repository());

  Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.load();
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen'),
      ),
      body: Observer(builder: (BuildContext context) {
        print('${controller.list.length}');
        return CommonListWidget(
          list: controller.list,
          onLoadMore: controller.load,
          onRefresh: controller.refresh,
          buildListItemWidget: _buildListItemWidget,
          buildEmptyMessageWidget: _buildEmptyMessageWidget,
        );
      }),
    );
  }

  Widget _buildListItemWidget(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.3,
              color: Colors.black,
            ),
          ),
        ),
        child: ListTile(
          title: Text('${controller.list[index].name}'),
          subtitle: Text('${controller.list[index].id}'),
        ),
      ),
    );
  }

  Widget _buildEmptyMessageWidget(BuildContext context) {
    return Center(
      child: Text('Nenhum item para mostrar'),
    );
  }
}
