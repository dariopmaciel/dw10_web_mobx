import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @readonly
  String _nome = '';

  @readonly
  bool _showSnackBar = false;
  @readonly
  String _mensagemSnackBar = "";

  @action
  void alterarNome(String nome) {
    _nome = nome;
  }

  @action
  Future<void> monstrarSnackBar() async {
    _showSnackBar = false;
    await Future.delayed(Duration.zero);
    _showSnackBar = true;
    _mensagemSnackBar = "Academia do Flutter Abre turmar dia -> 15/05";
  }
}
