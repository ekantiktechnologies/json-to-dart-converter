class UserModel {
  int? id;
  String? name;
  String? email;
  bool? isActive;

  UserModel({this.id, this.name, this.email, this.isActive, });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'isActive': isActive,
    };
  }
}