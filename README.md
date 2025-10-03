# JSON to Dart Model Generator — Convert JSON to Dart models for Flutter

Instantly generate Dart data classes from JSON with null-safety.  
👉 Try it online: [JSON to Dart Converter](https://ekantiktechnologies.in/tools/jsontodart.php?utm_source=github&utm_medium=repo&utm_campaign=json-to-dart)

## Example

**Input (examples/user.json):**
```json
{
  "id": 1,
  "name": "Maulik",
  "email": "maulik@example.com",
  "isActive": true
}
```

**Output (examples/user_model.dart):**
``` dart

class UserModel {
  int? id;
  String? name;
  String? email;
  bool? isActive;

  UserModel({this.id, this.name, this.email, this.isActive});

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
```

➡️ More examples inside the /examples

---
**Keywords:** JSON to Dart, Dart model generator, Flutter JSON parser, json-to-dart, model-generator, flutter-tools