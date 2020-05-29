class Person {
  final String userid;
  final String roleName;
  final String message;

  Person({this.userid, this.roleName, this.message});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      userid: json['userid'],
      roleName: json['roleName'],
      message: json['message'],
    );
  }
}
