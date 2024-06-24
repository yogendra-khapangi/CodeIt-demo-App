class EnqueryModel {
  EnqueryModel({
    required this.data,
  });

  final Data? data;

  factory EnqueryModel.fromJson(Map<String, dynamic> json) {
    return EnqueryModel(
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }
}

class Data {
  Data({
    required this.success,
    required this.status,
    required this.message,
  });

  final bool? success;
  final int? status;
  final String? message;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      success: json["success"],
      status: json["status"],
      message: json["message"],
    );
  }
}
