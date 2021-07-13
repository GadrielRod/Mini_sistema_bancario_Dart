import 'endereco.dart';
import 'funcionario.dart';


class CaixaOperador extends Funcionario {
 
CaixaOperador(
    int vMtricula,
    double vSalario,
    String vNome,
    String vRG,
    String vCPF,
    String vTelefone,
    Endereco vEndereco,
    [String? vEmail, vRamal,]
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

  
}
