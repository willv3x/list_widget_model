import 'package:list_widget_model/model/model.dart';
import 'package:list_widget_model/model/response_page.dart';
import 'package:list_widget_model/repository/repository.dart';
import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller extends _Controller with _$Controller {
  Controller(Repository repository) : super(repository);
}

abstract class _Controller with Store {

  Repository repository;

  _Controller(this.repository);

  @observable
  ObservableList<Model> _list = ObservableList();
  ObservableList<Model> get list => _list;

  int _pageNumber = 0;
  int get pageNumber => _pageNumber;

  @observable
  bool _listLoading = false;
  bool get listLoading => _listLoading;

  bool _lastPageAlready = false;
  bool get lastPageAlready => _lastPageAlready;

  @action
  Future<bool> load() async {
    if (lastPageAlready || listLoading) return false;
    this._listLoading = true;
    ResponsePage<Model> responsePage = await this.repository.getModels(this.pageNumber);
    if (responsePage != null) {
      this._lastPageAlready = responsePage.last != null? responsePage.last : true;
      this._pageNumber++;
      if (responsePage.content != null) {
        if (responsePage.content.isNotEmpty) {
          this.list.addAll(responsePage.content);
          this._listLoading = false;
          return true;
        }
      }
    }
    this._listLoading = false;
    return false;
  }

  @action
  void clear() {
    this._list = ObservableList();
    this._pageNumber = 0;
    this._listLoading = false;
    this._lastPageAlready = false;
  }

  Future<bool> refresh() async {
    this.clear();
    return await this.load();
  }
}