// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$_nomeAtom =
      Atom(name: 'HomeControllerBase._nome', context: context);

  String get nome {
    _$_nomeAtom.reportRead();
    return super._nome;
  }

  @override
  String get _nome => nome;

  @override
  set _nome(String value) {
    _$_nomeAtom.reportWrite(value, super._nome, () {
      super._nome = value;
    });
  }

  late final _$_showSnackBarAtom =
      Atom(name: 'HomeControllerBase._showSnackBar', context: context);

  bool get showSnackBar {
    _$_showSnackBarAtom.reportRead();
    return super._showSnackBar;
  }

  @override
  bool get _showSnackBar => showSnackBar;

  @override
  set _showSnackBar(bool value) {
    _$_showSnackBarAtom.reportWrite(value, super._showSnackBar, () {
      super._showSnackBar = value;
    });
  }

  late final _$_mensagemSnackBarAtom =
      Atom(name: 'HomeControllerBase._mensagemSnackBar', context: context);

  String get mensagemSnackBar {
    _$_mensagemSnackBarAtom.reportRead();
    return super._mensagemSnackBar;
  }

  @override
  String get _mensagemSnackBar => mensagemSnackBar;

  @override
  set _mensagemSnackBar(String value) {
    _$_mensagemSnackBarAtom.reportWrite(value, super._mensagemSnackBar, () {
      super._mensagemSnackBar = value;
    });
  }

  late final _$monstrarSnackBarAsyncAction =
      AsyncAction('HomeControllerBase.monstrarSnackBar', context: context);

  @override
  Future<void> monstrarSnackBar() {
    return _$monstrarSnackBarAsyncAction.run(() => super.monstrarSnackBar());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void alterarNome(String nome) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.alterarNome');
    try {
      return super.alterarNome(nome);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
