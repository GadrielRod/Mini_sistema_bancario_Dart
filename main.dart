import 'agencia.dart';
import 'caixa_operador.dart';
import 'conta_corrente.dart';
import 'endereco.dart';
import 'funcionario.dart';
import 'gerente.dart';
import 'pessoafisica.dart';
import 'pessoajuridica.dart';

void main() {
  var endereco = Endereco("Rua A", "12-A", "Centro", "POA", "RS");

  var gerente = Gerente(
      123, 456, "Paulo", "000", "111", "77777", endereco, "paulo@gmail.com");

  var clientePJ = PessoaJuridica(
      "123/0001",
      "João e Maria LTDA.",
      "Padaria Sonho de pão",
      "5555",
      endereco,
      "contato@padariasonhodepao.com.br");

  var clientePF = PessoaFisica("Maria José", "111", "222", "6666", endereco);

  var contaPF = ContaCorrente(
    100,
    "123.0",
    Agencia(2, gerente, endereco),
    clientePF,
    100,
  );

  var contaPJ = ContaCorrente(
    100,
    "124.0",
    Agencia(2, gerente, endereco),
    clientePJ,
    100,
  );

  var contaDoGerente = ContaCorrente(
    100,
    "124.0",
    Agencia(2, gerente, endereco),
    gerente,
    100,
  );

  var cliente_um = PessoaFisica("João Paulo", "111", "111", "1", endereco);
  var cliente_dois = PessoaJuridica(
      "11111", "1111111", "11111111111", "11111111111", endereco);
  var cliente_tres =
      Gerente(1, 2000.0, "paulo", "1111", "1111", "11111", endereco);
  var cliente_quatro = CaixaOperador(
      2, 2000.0, "11111", "1111", "111111", "1111111111", endereco);

  //print(contaPF);
  //print(contaPJ);
  //print(contaDoGerente);

  print(cliente_um);
  print(cliente_dois);
  print(cliente_tres);
  print(cliente_quatro);
}
