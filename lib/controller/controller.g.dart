// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on _Controller, Store {
  final _$_listAtom = Atom(name: '_Controller._list');

  @override
  ObservableList<Model> get _list {
    _$_listAtom.reportRead();
    return super._list;
  }

  @override
  set _list(ObservableList<Model> value) {
    _$_listAtom.reportWrite(value, super._list, () {
      super._list = value;
    });
  }

  final _$_listLoadingAtom = Atom(name: '_Controller._listLoading');

  @override
  bool get _listLoading {
    _$_listLoadingAtom.reportRead();
    return super._listLoading;
  }

  @override
  set _listLoading(bool value) {
    _$_listLoadingAtom.reportWrite(value, super._listLoading, () {
      super._listLoading = value;
    });
  }

  final _$loadAsyncAction = AsyncAction('_Controller.load');

  @override
  Future<bool> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  final _$_ControllerActionController = ActionController(name: '_Controller');

  @override
  void clear() {
    final _$actionInfo =
        _$_ControllerActionController.startAction(name: '_Controller.clear');
    try {
      return super.clear();
    } finally {
      _$_ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
