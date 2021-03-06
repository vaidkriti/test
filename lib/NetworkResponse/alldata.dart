

class Data {
  List<Departments>? departments;
  List<SubDepartments>? subDepartments;
  List<GroupDepartments>? groupDepartments;
  List<Qualification>? qualification;
  List<QualificationBranch>? qualificationBranch;
  List<Institutes>? institutes;
  List<Recruitments>? recruitments;
  List<InterestLevel>? interestLevel;
  List<Interests>? interests;
  List<Awards>? awards;
  List<Committees>? committees;
  List<Membership>? membership;
  List<Faculty>? faculty;
  List<EmpGroup>? empGroup;
  List<EmpGrade>? empGrade;
  List<E_EmpGrade>? eEmpGrade;
  List<EmpLevel_Designation>? empLevelDesignation;
  List<Category>? category;
  List<Region>? region;
  List<ProjectCategory>? projectCategory;
  List<Project>? project;
  List<WorkArea>? workArea;
  List<ManasRequestType>? manasRequestType;
  List<ManasGroundType>? manasGroundType;
  List<Trannings>? trannings;
  List<PH_Code>? pHCode;
  List<EntryMode>? entryMode;
  List<States>? states;
  List<SpV_Dept_Type>? spVDeptType;
  List<SpV_Dept_Link>? spVDeptLink;
  List<ProjectAreas>? projectAreas;
  List<Substantive_Grade>? substantiveGrade;
  List<Table32>? table32;

  Data({
      this.departments, 
      this.subDepartments, 
      this.groupDepartments, 
      this.qualification, 
      this.qualificationBranch, 
      this.institutes, 
      this.recruitments, 
      this.interestLevel, 
      this.interests, 
      this.awards, 
      this.committees, 
      this.membership, 
      this.faculty, 
      this.empGroup, 
      this.empGrade, 
      this.eEmpGrade, 
      this.empLevelDesignation, 
      this.category, 
      this.region, 
      this.projectCategory, 
      this.project, 
      this.workArea, 
      this.manasRequestType, 
      this.manasGroundType, 
      this.trannings, 
      this.pHCode, 
      this.entryMode, 
      this.states, 
      this.spVDeptType, 
      this.spVDeptLink, 
      this.projectAreas, 
      this.substantiveGrade, 
      this.table32});

  Data.fromJson(dynamic json) {
    if (json['departments'] != null) {
      departments = [];
      json['departments'].forEach((v) {
        departments?.add(Departments.fromJson(v));
      });
    }
    if (json['subDepartments'] != null) {
      subDepartments = [];
      json['subDepartments'].forEach((v) {
        subDepartments?.add(SubDepartments.fromJson(v));
      });
    }
    if (json['groupDepartments'] != null) {
      groupDepartments = [];
      json['groupDepartments'].forEach((v) {
        groupDepartments?.add(GroupDepartments.fromJson(v));
      });
    }
    if (json['qualification'] != null) {
      qualification = [];
      json['qualification'].forEach((v) {
        qualification?.add(Qualification.fromJson(v));
      });
    }
    if (json['qualificationBranch'] != null) {
      qualificationBranch = [];
      json['qualificationBranch'].forEach((v) {
        qualificationBranch?.add(QualificationBranch.fromJson(v));
      });
    }
    if (json['institutes'] != null) {
      institutes = [];
      json['institutes'].forEach((v) {
        institutes?.add(Institutes.fromJson(v));
      });
    }
    if (json['recruitments'] != null) {
      recruitments = [];
      json['recruitments'].forEach((v) {
        recruitments?.add(Recruitments.fromJson(v));
      });
    }
    if (json['interestLevel'] != null) {
      interestLevel = [];
      json['interestLevel'].forEach((v) {
        interestLevel?.add(InterestLevel.fromJson(v));
      });
    }
    if (json['interests'] != null) {
      interests = [];
      json['interests'].forEach((v) {
        interests?.add(Interests.fromJson(v));
      });
    }
    if (json['awards'] != null) {
      awards = [];
      json['awards'].forEach((v) {
        awards?.add(Awards.fromJson(v));
      });
    }
    if (json['committees'] != null) {
      committees = [];
      json['committees'].forEach((v) {
        committees?.add(Committees.fromJson(v));
      });
    }
    if (json['membership'] != null) {
      membership = [];
      json['membership'].forEach((v) {
        membership?.add(Membership.fromJson(v));
      });
    }
    if (json['faculty'] != null) {
      faculty = [];
      json['faculty'].forEach((v) {
        faculty?.add(Faculty.fromJson(v));
      });
    }
    if (json['empGroup'] != null) {
      empGroup = [];
      json['empGroup'].forEach((v) {
        empGroup?.add(EmpGroup.fromJson(v));
      });
    }
    if (json['empGrade'] != null) {
      empGrade = [];
      json['empGrade'].forEach((v) {
        empGrade?.add(EmpGrade.fromJson(v));
      });
    }
    if (json['e_EmpGrade'] != null) {
      eEmpGrade = [];
      json['e_EmpGrade'].forEach((v) {
        eEmpGrade?.add(E_EmpGrade.fromJson(v));
      });
    }
    if (json['empLevel_Designation'] != null) {
      empLevelDesignation = [];
      json['empLevel_Designation'].forEach((v) {
        empLevelDesignation?.add(EmpLevel_Designation.fromJson(v));
      });
    }
    if (json['category'] != null) {
      category = [];
      json['category'].forEach((v) {
        category?.add(Category.fromJson(v));
      });
    }
    if (json['region'] != null) {
      region = [];
      json['region'].forEach((v) {
        region?.add(Region.fromJson(v));
      });
    }
    if (json['projectCategory'] != null) {
      projectCategory = [];
      json['projectCategory'].forEach((v) {
        projectCategory?.add(ProjectCategory.fromJson(v));
      });
    }
    if (json['project'] != null) {
      project = [];
      json['project'].forEach((v) {
        project?.add(Project.fromJson(v));
      });
    }
    if (json['workArea'] != null) {
      workArea = [];
      json['workArea'].forEach((v) {
        workArea?.add(WorkArea.fromJson(v));
      });
    }
    if (json['manasRequestType'] != null) {
      manasRequestType = [];
      json['manasRequestType'].forEach((v) {
        manasRequestType?.add(ManasRequestType.fromJson(v));
      });
    }
    if (json['manasGroundType'] != null) {
      manasGroundType = [];
      json['manasGroundType'].forEach((v) {
        manasGroundType?.add(ManasGroundType.fromJson(v));
      });
    }
    if (json['trannings'] != null) {
      trannings = [];
      json['trannings'].forEach((v) {
        trannings?.add(Trannings.fromJson(v));
      });
    }
    if (json['pH_Code'] != null) {
      pHCode = [];
      json['pH_Code'].forEach((v) {
        pHCode?.add(PH_Code.fromJson(v));
      });
    }
    if (json['entryMode'] != null) {
      entryMode = [];
      json['entryMode'].forEach((v) {
        entryMode?.add(EntryMode.fromJson(v));
      });
    }
    if (json['states'] != null) {
      states = [];
      json['states'].forEach((v) {
        states?.add(States.fromJson(v));
      });
    }
    if (json['spV_Dept_Type'] != null) {
      spVDeptType = [];
      json['spV_Dept_Type'].forEach((v) {
        spVDeptType?.add(SpV_Dept_Type.fromJson(v));
      });
    }
    if (json['spV_Dept_Link'] != null) {
      spVDeptLink = [];
      json['spV_Dept_Link'].forEach((v) {
        spVDeptLink?.add(SpV_Dept_Link.fromJson(v));
      });
    }
    if (json['projectAreas'] != null) {
      projectAreas = [];
      json['projectAreas'].forEach((v) {
        projectAreas?.add(ProjectAreas.fromJson(v));
      });
    }
    if (json['substantive_Grade'] != null) {
      substantiveGrade = [];
      json['substantive_Grade'].forEach((v) {
        substantiveGrade?.add(Substantive_Grade.fromJson(v));
      });
    }
    if (json['table32'] != null) {
      table32 = [];
      json['table32'].forEach((v) {
        table32?.add(Table32.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (departments != null) {
      map['departments'] = departments?.map((v) => v.toJson()).toList();
    }
    if (subDepartments != null) {
      map['subDepartments'] = subDepartments?.map((v) => v.toJson()).toList();
    }
    if (groupDepartments != null) {
      map['groupDepartments'] = groupDepartments?.map((v) => v.toJson()).toList();
    }
    if (qualification != null) {
      map['qualification'] = qualification?.map((v) => v.toJson()).toList();
    }
    if (qualificationBranch != null) {
      map['qualificationBranch'] = qualificationBranch?.map((v) => v.toJson()).toList();
    }
    if (institutes != null) {
      map['institutes'] = institutes?.map((v) => v.toJson()).toList();
    }
    if (recruitments != null) {
      map['recruitments'] = recruitments?.map((v) => v.toJson()).toList();
    }
    if (interestLevel != null) {
      map['interestLevel'] = interestLevel?.map((v) => v.toJson()).toList();
    }
    if (interests != null) {
      map['interests'] = interests?.map((v) => v.toJson()).toList();
    }
    if (awards != null) {
      map['awards'] = awards?.map((v) => v.toJson()).toList();
    }
    if (committees != null) {
      map['committees'] = committees?.map((v) => v.toJson()).toList();
    }
    if (membership != null) {
      map['membership'] = membership?.map((v) => v.toJson()).toList();
    }
    if (faculty != null) {
      map['faculty'] = faculty?.map((v) => v.toJson()).toList();
    }
    if (empGroup != null) {
      map['empGroup'] = empGroup?.map((v) => v.toJson()).toList();
    }
    if (empGrade != null) {
      map['empGrade'] = empGrade?.map((v) => v.toJson()).toList();
    }
    if (eEmpGrade != null) {
      map['e_EmpGrade'] = eEmpGrade?.map((v) => v.toJson()).toList();
    }
    if (empLevelDesignation != null) {
      map['empLevel_Designation'] = empLevelDesignation?.map((v) => v.toJson()).toList();
    }
    if (category != null) {
      map['category'] = category?.map((v) => v.toJson()).toList();
    }
    if (region != null) {
      map['region'] = region?.map((v) => v.toJson()).toList();
    }
    if (projectCategory != null) {
      map['projectCategory'] = projectCategory?.map((v) => v.toJson()).toList();
    }
    if (project != null) {
      map['project'] = project?.map((v) => v.toJson()).toList();
    }
    if (workArea != null) {
      map['workArea'] = workArea?.map((v) => v.toJson()).toList();
    }
    if (manasRequestType != null) {
      map['manasRequestType'] = manasRequestType?.map((v) => v.toJson()).toList();
    }
    if (manasGroundType != null) {
      map['manasGroundType'] = manasGroundType?.map((v) => v.toJson()).toList();
    }
    if (trannings != null) {
      map['trannings'] = trannings?.map((v) => v.toJson()).toList();
    }
    if (pHCode != null) {
      map['pH_Code'] = pHCode?.map((v) => v.toJson()).toList();
    }
    if (entryMode != null) {
      map['entryMode'] = entryMode?.map((v) => v.toJson()).toList();
    }
    if (states != null) {
      map['states'] = states?.map((v) => v.toJson()).toList();
    }
    if (spVDeptType != null) {
      map['spV_Dept_Type'] = spVDeptType?.map((v) => v.toJson()).toList();
    }
    if (spVDeptLink != null) {
      map['spV_Dept_Link'] = spVDeptLink?.map((v) => v.toJson()).toList();
    }
    if (projectAreas != null) {
      map['projectAreas'] = projectAreas?.map((v) => v.toJson()).toList();
    }
    if (substantiveGrade != null) {
      map['substantive_Grade'] = substantiveGrade?.map((v) => v.toJson()).toList();
    }
    if (table32 != null) {
      map['table32'] = table32?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// tableName : "Substantive_Grade"
/// projectAreas : "Substantive_Grade"
/// empl_Group : "D"
/// gradeCode : "63"
/// substantive_Grade : "E2"
/// substantive_Grade_Text : "00-E2"

class Table32 {
  String? tableName;
  String? projectAreas;
  String? emplGroup;
  String? gradeCode;
  String? substantiveGrade;
  String? substantiveGradeText;

  Table32({
      this.tableName, 
      this.projectAreas, 
      this.emplGroup, 
      this.gradeCode, 
      this.substantiveGrade, 
      this.substantiveGradeText});

  Table32.fromJson(dynamic json) {
    tableName = json['tableName'];
    projectAreas = json['projectAreas'];
    emplGroup = json['empl_Group'];
    gradeCode = json['gradeCode'];
    substantiveGrade = json['substantive_Grade'];
    substantiveGradeText = json['substantive_Grade_Text'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['projectAreas'] = projectAreas;
    map['empl_Group'] = emplGroup;
    map['gradeCode'] = gradeCode;
    map['substantive_Grade'] = substantiveGrade;
    map['substantive_Grade_Text'] = substantiveGradeText;
    return map;
  }

}

/// tableName : "ProjectAreas"
/// projectAreas : "ProjectAreas"
/// projectAreaID : "711"
/// projectArea : "Adra-JV"
/// projectID : "7180"
/// project : "Adra-JV"
/// regionID : "9"
/// projectCategory : "1"

class Substantive_Grade {
  String? tableName;
  String? projectAreas;
  String? projectAreaID;
  String? projectArea;
  String? projectID;
  String? project;
  String? regionID;
  String? projectCategory;

  Substantive_Grade({
      this.tableName, 
      this.projectAreas, 
      this.projectAreaID, 
      this.projectArea, 
      this.projectID, 
      this.project, 
      this.regionID, 
      this.projectCategory});

  Substantive_Grade.fromJson(dynamic json) {
    tableName = json['tableName'];
    projectAreas = json['projectAreas'];
    projectAreaID = json['projectAreaID'];
    projectArea = json['projectArea'];
    projectID = json['projectID'];
    project = json['project'];
    regionID = json['regionID'];
    projectCategory = json['projectCategory'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['projectAreas'] = projectAreas;
    map['projectAreaID'] = projectAreaID;
    map['projectArea'] = projectArea;
    map['projectID'] = projectID;
    map['project'] = project;
    map['regionID'] = regionID;
    map['projectCategory'] = projectCategory;
    return map;
  }

}

/// tableName : "ProjectAreas"
/// projectAreas : "ProjectAreas"
/// projectAreaID : "711"
/// projectArea : "Adra-JV"
/// projectID : "7180"
/// project : "Adra-JV"
/// regionID : "9"
/// projectCategory : "1"

class ProjectAreas {
  String? tableName;
  String? projectAreas;
  String? projectAreaID;
  String? projectArea;
  String? projectID;
  String? project;
  String? regionID;
  String? projectCategory;

  ProjectAreas({
      this.tableName, 
      this.projectAreas, 
      this.projectAreaID, 
      this.projectArea, 
      this.projectID, 
      this.project, 
      this.regionID, 
      this.projectCategory});

  ProjectAreas.fromJson(dynamic json) {
    tableName = json['tableName'];
    projectAreas = json['projectAreas'];
    projectAreaID = json['projectAreaID'];
    projectArea = json['projectArea'];
    projectID = json['projectID'];
    project = json['project'];
    regionID = json['regionID'];
    projectCategory = json['projectCategory'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['projectAreas'] = projectAreas;
    map['projectAreaID'] = projectAreaID;
    map['projectArea'] = projectArea;
    map['projectID'] = projectID;
    map['project'] = project;
    map['regionID'] = regionID;
    map['projectCategory'] = projectCategory;
    return map;
  }

}

/// tableName : "SPV_Dept_Link"
/// spV_Dept_Link : "SPV_Dept_Link"
/// id : 93010001
/// textVal : "CMD"
/// spV_Dept_ID : 1095

class SpV_Dept_Link {
  String? tableName;
  String? spVDeptLink;
  int? id;
  String? textVal;
  int? spVDeptID;

  SpV_Dept_Link({
      this.tableName, 
      this.spVDeptLink, 
      this.id, 
      this.textVal, 
      this.spVDeptID});

  SpV_Dept_Link.fromJson(dynamic json) {
    tableName = json['tableName'];
    spVDeptLink = json['spV_Dept_Link'];
    id = json['id'];
    textVal = json['textVal'];
    spVDeptID = json['spV_Dept_ID'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['spV_Dept_Link'] = spVDeptLink;
    map['id'] = id;
    map['textVal'] = textVal;
    map['spV_Dept_ID'] = spVDeptID;
    return map;
  }

}

/// tableName : "SPV_Dept_Type"
/// spV_Dept_Type : "SPV_Dept_Type"
/// id : 1
/// textVal : "Non O & M"
/// dept_Group : 1

class SpV_Dept_Type {
  String? tableName;
  String? spVDeptType;
  int? id;
  String? textVal;
  int? deptGroup;

  SpV_Dept_Type({
      this.tableName, 
      this.spVDeptType, 
      this.id, 
      this.textVal, 
      this.deptGroup});

  SpV_Dept_Type.fromJson(dynamic json) {
    tableName = json['tableName'];
    spVDeptType = json['spV_Dept_Type'];
    id = json['id'];
    textVal = json['textVal'];
    deptGroup = json['dept_Group'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['spV_Dept_Type'] = spVDeptType;
    map['id'] = id;
    map['textVal'] = textVal;
    map['dept_Group'] = deptGroup;
    return map;
  }

}

/// tableName : "States"
/// states : "States"
/// stateID : 26
/// stateName : "Andaman und Nico.In."

class States {
  String? tableName;
  String? states;
  int? stateID;
  String? stateName;

  States({
      this.tableName, 
      this.states, 
      this.stateID, 
      this.stateName});

  States.fromJson(dynamic json) {
    tableName = json['tableName'];
    states = json['states'];
    stateID = json['stateID'];
    stateName = json['stateName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['states'] = states;
    map['stateID'] = stateID;
    map['stateName'] = stateName;
    return map;
  }

}

/// tableName : "EntryMode"
/// entryMode : "EntryMode"
/// id : 1
/// textVal : "ACT-Asst Chemist Trainee Hire"

class EntryMode {
  String? tableName;
  String? entryMode;
  int? id;
  String? textVal;

  EntryMode({
      this.tableName, 
      this.entryMode, 
      this.id, 
      this.textVal});

  EntryMode.fromJson(dynamic json) {
    tableName = json['tableName'];
    entryMode = json['entryMode'];
    id = json['id'];
    textVal = json['textVal'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['entryMode'] = entryMode;
    map['id'] = id;
    map['textVal'] = textVal;
    return map;
  }

}

/// tableName : "PH_Code"
/// pH_Code : "PH_Code"
/// codeID : "HH"
/// codeName : "HEARING HANDICAP Onl"

class PH_Code {
  String? tableName;
  String? pHCode;
  String? codeID;
  String? codeName;

  PH_Code({
      this.tableName, 
      this.pHCode, 
      this.codeID, 
      this.codeName});

  PH_Code.fromJson(dynamic json) {
    tableName = json['tableName'];
    pHCode = json['pH_Code'];
    codeID = json['codeID'];
    codeName = json['codeName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['pH_Code'] = pHCode;
    map['codeID'] = codeID;
    map['codeName'] = codeName;
    return map;
  }

}

/// tableName : "Trannings"
/// trannings : "Trannings"
/// tranningID : 50094344
/// tranningName : "\"  O&M OF LEAD ACID BATTERIES,INVERTOR,UP\""

class Trannings {
  String? tableName;
  String? trannings;
  int? tranningID;
  String? tranningName;

  Trannings({
      this.tableName, 
      this.trannings, 
      this.tranningID, 
      this.tranningName});

  Trannings.fromJson(dynamic json) {
    tableName = json['tableName'];
    trannings = json['trannings'];
    tranningID = json['tranningID'];
    tranningName = json['tranningName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['trannings'] = trannings;
    map['tranningID'] = tranningID;
    map['tranningName'] = tranningName;
    return map;
  }

}

/// tableName : "ManasGroundType"
/// manasGroundType : "ManasGroundType"
/// id : 10
/// text_Val : "<=2 Yr in superannuation"
/// requestTypeID : 8
/// requestType : "Choice Posting"

class ManasGroundType {
  String? tableName;
  String? manasGroundType;
  int? id;
  String? textVal;
  int? requestTypeID;
  String? requestType;

  ManasGroundType({
      this.tableName, 
      this.manasGroundType, 
      this.id, 
      this.textVal, 
      this.requestTypeID, 
      this.requestType});

  ManasGroundType.fromJson(dynamic json) {
    tableName = json['tableName'];
    manasGroundType = json['manasGroundType'];
    id = json['id'];
    textVal = json['text_Val'];
    requestTypeID = json['requestTypeID'];
    requestType = json['requestType'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['manasGroundType'] = manasGroundType;
    map['id'] = id;
    map['text_Val'] = textVal;
    map['requestTypeID'] = requestTypeID;
    map['requestType'] = requestType;
    return map;
  }

}

/// tableName : "ManasRequestType"
/// manasRequestType : "ManasRequestType"
/// id : 8
/// text_Val : "Choice Posting"

class ManasRequestType {
  String? tableName;
  String? manasRequestType;
  int? id;
  String? textVal;

  ManasRequestType({
      this.tableName, 
      this.manasRequestType, 
      this.id, 
      this.textVal});

  ManasRequestType.fromJson(dynamic json) {
    tableName = json['tableName'];
    manasRequestType = json['manasRequestType'];
    id = json['id'];
    textVal = json['text_Val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['manasRequestType'] = manasRequestType;
    map['id'] = id;
    map['text_Val'] = textVal;
    return map;
  }

}

/// tableName : "WorkArea"
/// workArea : "WorkArea"
/// areaID : 90000002
/// workProfile : "132/440KVEquipment/Testing/Relays/PLCC  "
/// departmentID : 93010394
/// department : "ELECT MAINT- MAIN PLANT"

class WorkArea {
  String? tableName;
  String? workArea;
  int? areaID;
  String? workProfile;
  int? departmentID;
  String? department;

  WorkArea({
      this.tableName, 
      this.workArea, 
      this.areaID, 
      this.workProfile, 
      this.departmentID, 
      this.department});

  WorkArea.fromJson(dynamic json) {
    tableName = json['tableName'];
    workArea = json['workArea'];
    areaID = json['areaID'];
    workProfile = json['workProfile'];
    departmentID = json['departmentID'];
    department = json['department'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['workArea'] = workArea;
    map['areaID'] = areaID;
    map['workProfile'] = workProfile;
    map['departmentID'] = departmentID;
    map['department'] = department;
    return map;
  }

}

/// tableName : "Project"
/// project : "Project"
/// pid : "1"
/// pCategory : "CC - SCOPE"
/// regionID : "1"
/// projectCategory : "11"

class Project {
  String? tableName;
  String? project;
  String? pid;
  String? pCategory;
  String? regionID;
  String? projectCategory;

  Project({
      this.tableName, 
      this.project, 
      this.pid, 
      this.pCategory, 
      this.regionID, 
      this.projectCategory});

  Project.fromJson(dynamic json) {
    tableName = json['tableName'];
    project = json['project'];
    pid = json['pid'];
    pCategory = json['pCategory'];
    regionID = json['regionID'];
    projectCategory = json['projectCategory'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['project'] = project;
    map['pid'] = pid;
    map['pCategory'] = pCategory;
    map['regionID'] = regionID;
    map['projectCategory'] = projectCategory;
    return map;
  }

}

/// tableName : "ProjectCategory"
/// projectCategory : "ProjectCategory"
/// projectTypeID : 11.0
/// projectType : "CC"

class ProjectCategory {
  String? tableName;
  String? projectCategory;
  double? projectTypeID;
  String? projectType;

  ProjectCategory({
      this.tableName, 
      this.projectCategory, 
      this.projectTypeID, 
      this.projectType});

  ProjectCategory.fromJson(dynamic json) {
    tableName = json['tableName'];
    projectCategory = json['projectCategory'];
    projectTypeID = json['projectTypeID'];
    projectType = json['projectType'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['projectCategory'] = projectCategory;
    map['projectTypeID'] = projectTypeID;
    map['projectType'] = projectType;
    return map;
  }

}

/// tableName : "Region"
/// region : "Region"
/// regionCode : 1.0
/// regionName : "CC"

class Region {
  String? tableName;
  String? region;
  double? regionCode;
  String? regionName;

  Region({
      this.tableName, 
      this.region, 
      this.regionCode, 
      this.regionName});

  Region.fromJson(dynamic json) {
    tableName = json['tableName'];
    region = json['region'];
    regionCode = json['regionCode'];
    regionName = json['regionName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['region'] = region;
    map['regionCode'] = regionCode;
    map['regionName'] = regionName;
    return map;
  }

}

/// tableName : "Category"
/// category : "Category"
/// categoryID : 1
/// categoryName : "GENERAL"

class Category {
  String? tableName;
  String? category;
  int? categoryID;
  String? categoryName;

  Category({
      this.tableName, 
      this.category, 
      this.categoryID, 
      this.categoryName});

  Category.fromJson(dynamic json) {
    tableName = json['tableName'];
    category = json['category'];
    categoryID = json['categoryID'];
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['category'] = category;
    map['categoryID'] = categoryID;
    map['categoryName'] = categoryName;
    return map;
  }

}

/// tableName : "EmpLevel_Designation"
/// empLevel_Designation : "EmpLevel_Designation"
/// id : "10011000"
/// textVal : "Artisan Trainee-ARTISAN TRAINEE"
/// levelCode : "AT"
/// levelName : "Artisan Trainee"
/// empGrp_Code : "T"
/// empGrp : "Trainees"

class EmpLevel_Designation {
  String? tableName;
  String? empLevelDesignation;
  String? id;
  String? textVal;
  String? levelCode;
  String? levelName;
  String? empGrpCode;
  String? empGrp;

  EmpLevel_Designation({
      this.tableName, 
      this.empLevelDesignation, 
      this.id, 
      this.textVal, 
      this.levelCode, 
      this.levelName, 
      this.empGrpCode, 
      this.empGrp});

  EmpLevel_Designation.fromJson(dynamic json) {
    tableName = json['tableName'];
    empLevelDesignation = json['empLevel_Designation'];
    id = json['id'];
    textVal = json['textVal'];
    levelCode = json['levelCode'];
    levelName = json['levelName'];
    empGrpCode = json['empGrp_Code'];
    empGrp = json['empGrp'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['empLevel_Designation'] = empLevelDesignation;
    map['id'] = id;
    map['textVal'] = textVal;
    map['levelCode'] = levelCode;
    map['levelName'] = levelName;
    map['empGrp_Code'] = empGrpCode;
    map['empGrp'] = empGrp;
    return map;
  }

}

/// tableName : "E_EmpGrade"
/// e_EmpGrade : "E_EmpGrade"
/// levelCode : "60"
/// levelName : "E1"
/// empGrp_Code : "E"
/// empGrp : "Executives"

class E_EmpGrade {
  String? tableName;
  String? eEmpGrade;
  String? levelCode;
  String? levelName;
  String? empGrpCode;
  String? empGrp;

  E_EmpGrade({
      this.tableName, 
      this.eEmpGrade, 
      this.levelCode, 
      this.levelName, 
      this.empGrpCode, 
      this.empGrp});

  E_EmpGrade.fromJson(dynamic json) {
    tableName = json['tableName'];
    eEmpGrade = json['e_EmpGrade'];
    levelCode = json['levelCode'];
    levelName = json['levelName'];
    empGrpCode = json['empGrp_Code'];
    empGrp = json['empGrp'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['e_EmpGrade'] = eEmpGrade;
    map['levelCode'] = levelCode;
    map['levelName'] = levelName;
    map['empGrp_Code'] = empGrpCode;
    map['empGrp'] = empGrp;
    return map;
  }

}

/// tableName : "EmpGrade"
/// empGrade : "EmpGrade"
/// levelCode : "A0"
/// levelName : "A0 W1SSS"
/// empGrp_Code : "W"
/// empGrp : "Workers"

class EmpGrade {
  String? tableName;
  String? empGrade;
  String? levelCode;
  String? levelName;
  String? empGrpCode;
  String? empGrp;

  EmpGrade({
      this.tableName, 
      this.empGrade, 
      this.levelCode, 
      this.levelName, 
      this.empGrpCode, 
      this.empGrp});

  EmpGrade.fromJson(dynamic json) {
    tableName = json['tableName'];
    empGrade = json['empGrade'];
    levelCode = json['levelCode'];
    levelName = json['levelName'];
    empGrpCode = json['empGrp_Code'];
    empGrp = json['empGrp'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['empGrade'] = empGrade;
    map['levelCode'] = levelCode;
    map['levelName'] = levelName;
    map['empGrp_Code'] = empGrpCode;
    map['empGrp'] = empGrp;
    return map;
  }

}

/// tableName : "EmpGroup"
/// empGroup : "EmpGroup"
/// gradeCode : "A"
/// grade : "A-ADHOC EMPLOYEES"

class EmpGroup {
  String? tableName;
  String? empGroup;
  String? gradeCode;
  String? grade;

  EmpGroup({
      this.tableName, 
      this.empGroup, 
      this.gradeCode, 
      this.grade});

  EmpGroup.fromJson(dynamic json) {
    tableName = json['tableName'];
    empGroup = json['empGroup'];
    gradeCode = json['gradeCode'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['empGroup'] = empGroup;
    map['gradeCode'] = gradeCode;
    map['grade'] = grade;
    return map;
  }

}

/// tableName : "Faculty"
/// faculty : "Faculty"
/// id : 5001
/// text_val : "ABB"

class Faculty {
  String? tableName;
  String? faculty;
  int? id;
  String? textVal;

  Faculty({
      this.tableName, 
      this.faculty, 
      this.id, 
      this.textVal});

  Faculty.fromJson(dynamic json) {
    tableName = json['tableName'];
    faculty = json['faculty'];
    id = json['id'];
    textVal = json['text_val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['faculty'] = faculty;
    map['id'] = id;
    map['text_val'] = textVal;
    return map;
  }

}

/// tableName : "Membership"
/// membership : "Membership"
/// id : 5001
/// text_val : "ABB"

class Membership {
  String? tableName;
  String? membership;
  int? id;
  String? textVal;

  Membership({
      this.tableName, 
      this.membership, 
      this.id, 
      this.textVal});

  Membership.fromJson(dynamic json) {
    tableName = json['tableName'];
    membership = json['membership'];
    id = json['id'];
    textVal = json['text_val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['membership'] = membership;
    map['id'] = id;
    map['text_val'] = textVal;
    return map;
  }

}

/// tableName : "Committees"
/// committees : "Committees"
/// id : 20013
/// text_val : "Canteen Management Committee(NTPC)"

class Committees {
  String? tableName;
  String? committees;
  int? id;
  String? textVal;

  Committees({
      this.tableName, 
      this.committees, 
      this.id, 
      this.textVal});

  Committees.fromJson(dynamic json) {
    tableName = json['tableName'];
    committees = json['committees'];
    id = json['id'];
    textVal = json['text_val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['committees'] = committees;
    map['id'] = id;
    map['text_val'] = textVal;
    return map;
  }

}

/// tableName : "Awards"
/// awards : "Awards"
/// id : 2006
/// text_val : "1st Vishwkarma Rshtrya Pruskar"

class Awards {
  String? tableName;
  String? awards;
  int? id;
  String? textVal;

  Awards({
      this.tableName, 
      this.awards, 
      this.id, 
      this.textVal});

  Awards.fromJson(dynamic json) {
    tableName = json['tableName'];
    awards = json['awards'];
    id = json['id'];
    textVal = json['text_val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['awards'] = awards;
    map['id'] = id;
    map['text_val'] = textVal;
    return map;
  }

}

/// tableName : "Interests"
/// interests : "Interests"
/// id : 1
/// text_val : "Analysis arts"

class Interests {
  String? tableName;
  String? interests;
  int? id;
  String? textVal;

  Interests({
      this.tableName, 
      this.interests, 
      this.id, 
      this.textVal});

  Interests.fromJson(dynamic json) {
    tableName = json['tableName'];
    interests = json['interests'];
    id = json['id'];
    textVal = json['text_val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['interests'] = interests;
    map['id'] = id;
    map['text_val'] = textVal;
    return map;
  }

}

/// tableName : "InterestLevel"
/// interestLevel : "InterestLevel"
/// id : 2
/// text_val : "Beginner"

class InterestLevel {
  String? tableName;
  String? interestLevel;
  int? id;
  String? textVal;

  InterestLevel({
      this.tableName, 
      this.interestLevel, 
      this.id, 
      this.textVal});

  InterestLevel.fromJson(dynamic json) {
    tableName = json['tableName'];
    interestLevel = json['interestLevel'];
    id = json['id'];
    textVal = json['text_val'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['interestLevel'] = interestLevel;
    map['id'] = id;
    map['text_val'] = textVal;
    return map;
  }

}

/// tableName : "Recruitments"
/// recruitments : "Recruitments"
/// recruitmentID : 1
/// recruitment : "Architect"

class Recruitments {
  String? tableName;
  String? recruitments;
  int? recruitmentID;
  String? recruitment;

  Recruitments({
      this.tableName, 
      this.recruitments, 
      this.recruitmentID, 
      this.recruitment});

  Recruitments.fromJson(dynamic json) {
    tableName = json['tableName'];
    recruitments = json['recruitments'];
    recruitmentID = json['recruitmentID'];
    recruitment = json['recruitment'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['recruitments'] = recruitments;
    map['recruitmentID'] = recruitmentID;
    map['recruitment'] = recruitment;
    return map;
  }

}

/// tableName : "Institutes"
/// institutes : "Institutes"
/// instituteID : 6361
/// institute : "1st Asior Communication"

class Institutes {
  String? tableName;
  String? institutes;
  int? instituteID;
  String? institute;

  Institutes({
      this.tableName, 
      this.institutes, 
      this.instituteID, 
      this.institute});

  Institutes.fromJson(dynamic json) {
    tableName = json['tableName'];
    institutes = json['institutes'];
    instituteID = json['instituteID'];
    institute = json['institute'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['institutes'] = institutes;
    map['instituteID'] = instituteID;
    map['institute'] = institute;
    return map;
  }

}

/// tableName : "QualificationBranch"
/// qualificationBranch : "QualificationBranch"
/// branchID : 3083
/// branchName : "1st Class Mine Manager"

class QualificationBranch {
  String? tableName;
  String? qualificationBranch;
  int? branchID;
  String? branchName;

  QualificationBranch({
      this.tableName, 
      this.qualificationBranch, 
      this.branchID, 
      this.branchName});

  QualificationBranch.fromJson(dynamic json) {
    tableName = json['tableName'];
    qualificationBranch = json['qualificationBranch'];
    branchID = json['branchID'];
    branchName = json['branchName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['qualificationBranch'] = qualificationBranch;
    map['branchID'] = branchID;
    map['branchName'] = branchName;
    return map;
  }

}

/// tableName : "Qualification"
/// qualification : "Qualification"
/// qualificationID : 1
/// qualification1 : "Illiterate"

class Qualification {
  String? tableName;
  String? qualification;
  int? qualificationID;
  String? qualification1;

  Qualification({
      this.tableName, 
      this.qualification, 
      this.qualificationID, 
      this.qualification1});

  Qualification.fromJson(dynamic json) {
    tableName = json['tableName'];
    qualification = json['qualification'];
    qualificationID = json['qualificationID'];
    qualification1 = json['qualification1'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['qualification'] = qualification;
    map['qualificationID'] = qualificationID;
    map['qualification1'] = qualification1;
    return map;
  }

}

/// tableName : "Departments"
/// groupDepartments : "Departments"
/// deptCode : 93010081
/// deptName : "ACCOUNTS"
/// subDeptCode : 1099
/// subDeptName : "FINANCE"
/// groupDeptCode : 6
/// groupDeptName : "FINANCE"

class GroupDepartments {
  String? tableName;
  String? groupDepartments;
  int? deptCode;
  String? deptName;
  int? subDeptCode;
  String? subDeptName;
  int? groupDeptCode;
  String? groupDeptName;

  GroupDepartments({
      this.tableName, 
      this.groupDepartments, 
      this.deptCode, 
      this.deptName, 
      this.subDeptCode, 
      this.subDeptName, 
      this.groupDeptCode, 
      this.groupDeptName});

  GroupDepartments.fromJson(dynamic json) {
    tableName = json['tableName'];
    groupDepartments = json['groupDepartments'];
    deptCode = json['deptCode'];
    deptName = json['deptName'];
    subDeptCode = json['subDeptCode'];
    subDeptName = json['subDeptName'];
    groupDeptCode = json['groupDeptCode'];
    groupDeptName = json['groupDeptName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['groupDepartments'] = groupDepartments;
    map['deptCode'] = deptCode;
    map['deptName'] = deptName;
    map['subDeptCode'] = subDeptCode;
    map['subDeptName'] = subDeptName;
    map['groupDeptCode'] = groupDeptCode;
    map['groupDeptName'] = groupDeptName;
    return map;
  }

}

/// tableName : "SubDepartments"
/// subDepartments : "SubDepartments"
/// subDeptCode : 1001
/// subDeptName : "ANAESTHESIA"
/// groupDeptCode : 10
/// groupDeptName : "MEDICAL"

class SubDepartments {
  String? tableName;
  String? subDepartments;
  int? subDeptCode;
  String? subDeptName;
  int? groupDeptCode;
  String? groupDeptName;

  SubDepartments({
      this.tableName, 
      this.subDepartments, 
      this.subDeptCode, 
      this.subDeptName, 
      this.groupDeptCode, 
      this.groupDeptName});

  SubDepartments.fromJson(dynamic json) {
    tableName = json['tableName'];
    subDepartments = json['subDepartments'];
    subDeptCode = json['subDeptCode'];
    subDeptName = json['subDeptName'];
    groupDeptCode = json['groupDeptCode'];
    groupDeptName = json['groupDeptName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['subDepartments'] = subDepartments;
    map['subDeptCode'] = subDeptCode;
    map['subDeptName'] = subDeptName;
    map['groupDeptCode'] = groupDeptCode;
    map['groupDeptName'] = groupDeptName;
    return map;
  }

}

/// tableName : "GroupDepartments"
/// departments : "GroupDepartments"
/// groupDeptCode : 30
/// groupDeptName : "APDRP"

class Departments {
  String? tableName;
  String? departments;
  int? groupDeptCode;
  String? groupDeptName;

  Departments({
      this.tableName, 
      this.departments, 
      this.groupDeptCode, 
      this.groupDeptName});

  Departments.fromJson(dynamic json) {
    tableName = json['tableName'];
    departments = json['departments'];
    groupDeptCode = json['groupDeptCode'];
    groupDeptName = json['groupDeptName'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['tableName'] = tableName;
    map['departments'] = departments;
    map['groupDeptCode'] = groupDeptCode;
    map['groupDeptName'] = groupDeptName;
    return map;
  }

}