import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/models/estado_model.dart';

class ColaboracaoService {
  Future<List<dynamic>> fetch() async {
    var url = 'localhost:3000/colaboracao';
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    List lista = json.map((objJson) => Colaboracao.fromJson(objJson)).toList();
    return lista;
  }
}
