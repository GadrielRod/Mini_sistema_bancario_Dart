import 'endereco.dart';
import 'pessoafisica.dart';

abstract class Funcionario extends PessoaFisica {
  int _matricula;
  int? _ramal;
  double salario;

  Funcionario(this._matricula, this.salario, String nome, String RG, String CPF,
      String vTelefone, Endereco vEndereco,
      [String? vEmail, this._ramal])
      : super(nome, RG, CPF, vTelefone, vEndereco, vEmail);

  int get matricula => this._matricula;

  get ramal => this._ramal;

  set matricula(int value) => this._matricula = value;

  set ramal(value) => this._ramal = value;
}
