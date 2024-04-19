// To parse this JSON data, do
//
//     final profileDataModel = profileDataModelFromJson(jsonString);

import 'dart:convert';

List<ProfileDataModel> profileDataModelFromJson(String str) => List<ProfileDataModel>.from(json.decode(str).map((x) => ProfileDataModel.fromJson(x)));

String profileDataModelToJson(List<ProfileDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProfileDataModel {
  int? admindate;
  int? batch;
  int? semester;
  int? dob;
  String? aadhaar;
  String? mobilenumber;
  String? email;
  String? fathersname;
  String? mothersname;
  String? parentmobilenumber;
  int? courseid;
  String? branchid;
  String? gender;
  String? permAdress;
  String? nationality;
  String? mothertongue;
  String? religion;
  List<String>? category;
  int? mobile;
  String? grade;
  int? credits;
  String? status;
  int? monthyr;
  String? tester;

  ProfileDataModel({
    this.admindate,
    this.batch,
    this.semester,
    this.dob,
    this.aadhaar,
    this.mobilenumber,
    this.email,
    this.fathersname,
    this.mothersname,
    this.parentmobilenumber,
    this.courseid,
    this.branchid,
    this.gender,
    this.permAdress,
    this.nationality,
    this.mothertongue,
    this.religion,
    this.category,
    this.mobile,
    this.grade,
    this.credits,
    this.status,
    this.monthyr,
    this.tester,
  });

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) => ProfileDataModel(
    admindate: json["admindate"],
    batch: json["batch"],
    semester: json["semester"],
    dob: json["dob"],
    aadhaar: json["aadhaar"],
    mobilenumber: json["mobilenumber"],
    email: json["email"],
    fathersname: json["fathersname"],
    mothersname: json["mothersname"],
    parentmobilenumber: json["parentmobilenumber"],
    courseid: json["courseid"],
    branchid: json["branchid"],
    gender: json["gender"],
    permAdress: json["permAdress"],
    nationality: json["nationality"],
    mothertongue: json["mothertongue"],
    religion: json["religion"],
    category: json["category"] == null ? [] : List<String>.from(json["category"]!.map((x) => x)),
    mobile: json["mobile"],
    grade: json["grade"],
    credits: json["credits"],
    status: json["status"],
    monthyr: json["monthyr"],
    tester: json["tester"],
  );

  Map<String, dynamic> toJson() => {
    "admindate": admindate,
    "batch": batch,
    "semester": semester,
    "dob": dob,
    "aadhaar": aadhaar,
    "mobilenumber": mobilenumber,
    "email": email,
    "fathersname": fathersname,
    "mothersname": mothersname,
    "parentmobilenumber": parentmobilenumber,
    "courseid": courseid,
    "branchid": branchid,
    "gender": gender,
    "permAdress": permAdress,
    "nationality": nationality,
    "mothertongue": mothertongue,
    "religion": religion,
    "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x)),
    "mobile": mobile,
    "grade": grade,
    "credits": credits,
    "status": status,
    "monthyr": monthyr,
    "tester": tester,
  };
}
