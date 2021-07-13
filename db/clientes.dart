import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _listaDeClientes = [];

  static void cadastrar(Pessoa pessoa) {
    _listaDeClientes.add(pessoa);
  }

  static Iterable<Pessoa> buscar(String telefoneParaContato) {
    return _listaDeClientes
        .where((pessoa) => pessoa.telefoneParaContato == telefoneParaContato);
  }

  static void editar(Pessoa vPessoa) {
    bool localizado = _listaDeClientes.contains(vPessoa);

    if (localizado) {
      var pessoas = buscar(vPessoa.telefoneParaContato);
      for (Pessoa antigo in pessoas) {
        antigo.telefoneParaContato = vPessoa.telefoneParaContato;
        antigo.email = vPessoa.email;
        antigo.endereco = vPessoa.endereco;
      }
    }
  }

  static void remover(String telefoneParaContato) {
    _listaDeClientes.removeWhere(
        (pessoa) => pessoa.telefoneParaContato == telefoneParaContato); 
  }
}
