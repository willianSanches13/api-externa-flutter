class Colaboracao {
  final String? descricao;
  final String? audio;
  final String? imagem;
  final String? proveniencia;

  Colaboracao({this.descricao, this.audio, this.imagem, this.proveniencia});
  factory Colaboracao.fromJson(Map<String, dynamic> json) {
    return Colaboracao(
        descricao: json['descricao'],
        audio: json['audio'],
        imagem: json['imagem'],
        proveniencia: json['proveniencia']);
  }
}
