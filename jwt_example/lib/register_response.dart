class RegisterResponseModel {
  bool? succeeded;
  String? message;
  String? errors;
  String? data;

  RegisterResponseModel({this.succeeded, this.message, this.errors, this.data});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    succeeded = json['succeeded'] as bool;
    message = json['message'] as String;
    errors = json['errors'] as String;
    data = json['data'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['succeeded'] = this.succeeded;
    data['message'] = this.message;
    data['errors'] = this.errors;
    data['data'] = this.data;
    return data;
  }
}
