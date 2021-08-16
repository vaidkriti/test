class KeyMonitoringData {
  int? code;
  String? status;
  String? totalRecord;
  String? totalSanctioned;
  String? totalPositioned;
  String? totalVacantOneM;
  String? totalVacantThreeM;
  String? totalVacantSixM;
  List<Data>? data;

  KeyMonitoringData({
      this.code, 
      this.status, 
      this.totalRecord, 
      this.totalSanctioned, 
      this.totalPositioned, 
      this.totalVacantOneM, 
      this.totalVacantThreeM, 
      this.totalVacantSixM, 
      this.data});

  KeyMonitoringData.fromJson(dynamic json) {
    code = json['code'];
    status = json['status'];
    totalRecord = json['totalRecord'];
    totalSanctioned = json['totalSanctioned'];
    totalPositioned = json['totalPositioned'];
    totalVacantOneM = json['totalVacantOneM'];
    totalVacantThreeM = json['totalVacantThreeM'];
    totalVacantSixM = json['totalVacantSixM'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['code'] = code;
    map['status'] = status;
    map['totalRecord'] = totalRecord;
    map['totalSanctioned'] = totalSanctioned;
    map['totalPositioned'] = totalPositioned;
    map['totalVacantOneM'] = totalVacantOneM;
    map['totalVacantThreeM'] = totalVacantThreeM;
    map['totalVacantSixM'] = totalVacantSixM;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  int? positionID;
  String? title;
  String? positionType;
  int? totalSanctioned;
  int? totalPositioned;
  String? region;
  String? project;
  String? location;
  String? departmentName;
  String? subDepartmentName;
  String? departmentGroupName;
  String? gradeName;
  String? levelName;
  int? jobID;

  Data({
      this.positionID, 
      this.title, 
      this.positionType, 
      this.totalSanctioned, 
      this.totalPositioned, 
      this.region, 
      this.project, 
      this.location, 
      this.departmentName, 
      this.subDepartmentName, 
      this.departmentGroupName, 
      this.gradeName, 
      this.levelName, 
      this.jobID});

  Data.fromJson(dynamic json) {
    positionID = json['positionID'];
    title = json['title'];
    positionType = json['positionType'];
    totalSanctioned = json['totalSanctioned'];
    totalPositioned = json['totalPositioned'];
    region = json['region'];
    project = json['project'];
    location = json['location'];
    departmentName = json['departmentName'];
    subDepartmentName = json['subDepartmentName'];
    departmentGroupName = json['departmentGroupName'];
    gradeName = json['gradeName'];
    levelName = json['levelName'];
    jobID = json['jobID'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['positionID'] = positionID;
    map['title'] = title;
    map['positionType'] = positionType;
    map['totalSanctioned'] = totalSanctioned;
    map['totalPositioned'] = totalPositioned;
    map['region'] = region;
    map['project'] = project;
    map['location'] = location;
    map['departmentName'] = departmentName;
    map['subDepartmentName'] = subDepartmentName;
    map['departmentGroupName'] = departmentGroupName;
    map['gradeName'] = gradeName;
    map['levelName'] = levelName;
    map['jobID'] = jobID;
    return map;
  }

}