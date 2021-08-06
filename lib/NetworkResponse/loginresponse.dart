class loginresponse {
  int code = 200;
  String token = "";
  Data? data ;

  loginresponse({required this.code, required this.token, required this.data});

  loginresponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    token = json['token'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Table> table =[];

  Data({required this.table});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['table'] != null) {
      table = <Table>[];
      json['table'].forEach((v) {
        table.add(new Table.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['table'] = this.table.map((v) => v.toJson()).toList();
    return data;
  }
}

class Table {
  String isActive="";
  String name ="";
  int empCode = 2;
  String department ="";
  String designation ="";
  String mobile ="";
  String email ="";
  String grade ="";
  String emplGroup="";
  String project="";
  String location="";
  String dob="";
  String userRole="";
  String imgCode="";
  int isPwdChange=0;

  Table(
      {required this.isActive,
        required this.name,
        required this.empCode,
        required this.department,
        required this.designation,
        required this.mobile,
        required this.email,
        required this.grade,
        required this.emplGroup,
        required this.project,
        required this.location,
        required this.dob,
        required this.userRole,
        required this.imgCode,
        required this.isPwdChange});

  Table.fromJson(Map<String, dynamic> json) {
    isActive = json['isActive'];
    name = json['name'];
    empCode = json['empCode'];
    department = json['department'];
    designation = json['designation'];
    mobile = json['mobile'];
    email = json['email'];
    grade = json['grade'];
    emplGroup = json['empl_Group'];
    project = json['project'];
    location = json['location'];
    dob = json['dob'];
    userRole = json['userRole'];
    imgCode = json['imgCode'];
    isPwdChange = json['isPwdChange'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isActive'] = this.isActive;
    data['name'] = this.name;
    data['empCode'] = this.empCode;
    data['department'] = this.department;
    data['designation'] = this.designation;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['grade'] = this.grade;
    data['empl_Group'] = this.emplGroup;
    data['project'] = this.project;
    data['location'] = this.location;
    data['dob'] = this.dob;
    data['userRole'] = this.userRole;
    data['imgCode'] = this.imgCode;
    data['isPwdChange'] = this.isPwdChange;
    return data;
  }
}
