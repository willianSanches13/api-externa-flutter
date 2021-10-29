class Estado {
  final int? id;
  final String? nome;
  final String? sigla;

  Estado({this.id, this.nome, this.sigla});
  factory Estado.fromJson(Map<String, dynamic> json) {
    return Estado(id: json['id'], nome: json['nome'], sigla: json['sigla']);
  }
}
