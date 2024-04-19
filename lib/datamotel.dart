class Usermodel {
  String? halltkt;
  String? admindate;
  String? sem;
  String? dob;
  String? aadhaar;
  String? mobilenumber;
  String? email;
  String? id;

  Usermodel(
      {this.halltkt,
        this.admindate,
        this.sem,
        this.dob,
        this.aadhaar,
        this.mobilenumber,
        this.email,
        this.id});

  Usermodel.fromJson(Map<String, dynamic> json) {
    halltkt = json['halltkt'];
    admindate = json['admindate'];
    sem = json['sem'];
    dob = json['dob'];
    aadhaar = json['aadhaar'];
    mobilenumber = json['mobilenumber'];
    email = json['email'];
    id = json['id'];
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
    data['id'] = this.id;
    return data;
  }
}


