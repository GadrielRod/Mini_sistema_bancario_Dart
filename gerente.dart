import 'endereco.dart';
import 'funcionario.dart';


class Gerente extends Funcionario {
  
  // Por herança: nome, telefone, email, endereco

  // Método construtor
  Gerente(
    int vMtricula,
    double vSalario,
    String vNome,
    String vRG,
    String vCPF,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail,
    int? vRamal]
  ) : super(
          vMtricula,
          vSalario,
          vNome,
          vRG,
          vCPF,
          vTelefone,
          vEndereco,
          vEmail,
          vRamal,
        );

  

  String? get obterEndereco =>
      "Logradouro ${this.endereco.rua} n° ${this.endereco.numero} no bairro ${this.endereco.bairro}/${this.endereco.cidade}";

  String? get dadosTelefonicos =>
      "Tel: ${this.telefoneParaContato} / Ramal ${this.ramal}";

}
