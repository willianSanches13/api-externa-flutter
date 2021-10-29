import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/models/estado_model.dart';

class EstadoService {
  Future<List<dynamic>> fetch() async {
    var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    List lista = json.map((objJson) => Estado.fromJson(objJson)).toList();
    print(lista[0].nome);
    return lista;
  }
}
