class User {
  final String job;
  final String name;

  User(this.job, this.name);

  Map<String, dynamic> toJson() => {'job': job, 'name': name};
}
