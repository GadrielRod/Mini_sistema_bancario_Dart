import '../endereco.dart';

class Enderecos {
  static List<Endereco> _listaDeEnderecos = [];

  static void cadastrar(Endereco endereco) {
    _listaDeEnderecos.add(endereco);
  }

  static Iterable<Endereco> buscar(String rua) {
    return _listaDeEnderecos.where((obj) => obj.rua == rua);
  }

  static void editar(Endereco vEndereco) {
    bool localizado = _listaDeEnderecos.contains(vEndereco);

    if (localizado) {
      var enderecos = buscar(vEndereco.rua);
      for (var anitgo in enderecos) {
        anitgo.rua = vEndereco.rua;
        anitgo.numero = vEndereco.numero;
        anitgo.bairro = vEndereco.bairro;
        anitgo.cidade = vEndereco.cidade;
        anitgo.estado = vEndereco.estado;
      }
    }
  }

  static void remover(String rua) {
    var enderecos = buscar(rua);
    for (var endereco in enderecos) {
      int indice = _listaDeEnderecos.indexOf(endereco);
      _listaDeEnderecos.remove(indice);
      if (indice != -1) {
        _listaDeEnderecos.removeAt(indice);
      }
    }
  }
}
