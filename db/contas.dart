import '../agencia.dart';
import '../conta.dart';

class Contas {
  static List<Conta> _listaDeContas = [];

  static void cadastrar(Conta conta) {
    _listaDeContas.add(conta);
  }

  static Iterable<Conta> buscar(Agencia agencia) {
    return _listaDeContas.where((agencia) => agencia.agencia == agencia);
  }

  static void editar(Conta vConta) {
    bool localizado = _listaDeContas.contains(vConta);
    if (localizado) {
      var contas = buscar(vConta.agencia);
      for (Conta antigo in contas) {
        antigo.agencia = vConta.agencia;
        antigo.cliente = vConta.cliente;
      }
    }
  }

  static void remover(Agencia agencia) {
    _listaDeContas.removeWhere((agencia) => agencia.agencia == agencia);
  }
}
