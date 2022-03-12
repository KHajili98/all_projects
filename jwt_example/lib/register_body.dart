class RegisterRequestModel {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phoneNumber;
  String? confirmPassword;

  RegisterRequestModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.password,
      this.confirmPassword,
      this.phoneNumber});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'] as String;
    lastName = json['lastName'] as String;
    email = json['email'] as String;
    password = json['password'] as String;
    confirmPassword = json['confirmPassword'] as String;
    phoneNumber = json['phoneNumber'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['confirmPassword'] = this.confirmPassword;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}
