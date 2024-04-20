import 'dart:ffi';

class Usermodel {
  String? halltkt;
  String? admindate;
  String? sem;
  String? dob;
  String? aadhaar;
  String? mobilenumber;
  String? email;
  String? id;
  // String? gender;
  // String? ParentName;
  // String? PermAddress;
  // String? Nationality;
  // String? MothTounge;
  // String? Religion;
  // String? Category;
  // String? Mobile;
  // String? ParentsMobile;
  // String? Batch;


  Usermodel(
      {this.halltkt,
        this.admindate,
        this.sem,
        this.dob,
        this.aadhaar,
        this.mobilenumber,
        this.email,
        this.id,
      // this.gender,
      // this.Batch,
      // this.Category,
      // this.Mobile,
      // this.MothTounge,
      // this.Nationality,
      // this.ParentName,
      // this.ParentsMobile,
      // this.PermAddress,
      // this.Religion
      });

  Usermodel.fromJson(Map<String, dynamic> json) {
    halltkt = json['halltkt'];
    admindate = json['admindate'];
    sem = json['sem'];
    dob = json['dob'];
    aadhaar = json['aadhaar'];
    mobilenumber = json['mobilenumber'];
    email = json['email'];
    id = json['id'];
    // gender=json['gender'];
    // Batch=json['Batch'];
    // Category=json['Category'];
    // Mobile=json['Mobile'];
    // MothTounge=json['MothTounge'];
    // ParentName=json['ParentName'];
    // ParentsMobile=json['ParentsMobile'];
    // PermAddress=json['PermAddress'];
    // Religion=json['Religion'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['halltkt'] = this.halltkt;
    data['admindate'] = this.admindate;
    data['sem'] = this.sem;
    data['dob'] = this.dob;
    data['aadhaar'] = this.aadhaar;
    data['mobilenumber'] = this.mobilenumber;
    data['email'] = this.email;
    // data['gender'] = this.gender;
    // data['Batch'] = this.Batch;
    // data['Category'] = this.Category;
    // data['Mobile'] = this.Mobile;
    // data['MothTounge'] = this.MothTounge;
    // data['ParentName'] = this.ParentName;
    // data['ParentsMobile'] = this.ParentsMobile;
    // data['PermAddress'] = this.PermAddress;
    // data['Religion'] = this.Religion;


    return data;
  }
}


