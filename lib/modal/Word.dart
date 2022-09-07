class Word {
  final String name;
  final String id;

  Word(this.name, this.id);

  Word.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        id = json['id'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
      };
}
