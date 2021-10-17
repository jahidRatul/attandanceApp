import 'package:to_do_app/home_screen/http_helper.dart';

class AttendanceModelClass {
  bool success;
  Data data;

  AttendanceModelClass({this.success, this.data});

  AttendanceModelClass.fromJson(Map<String, dynamic> json) {
    this._fromJson(json);
  }
  _fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }

  callApi() async {
    Map<String, dynamic> res =
        await HttpHelper.get("http://210.4.76.133:5401/api/leave", headers: {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIyMDAxMDkwMTE0IiwiaXNzIjoiaHR0cDpcL1wvMjEwLjQuNzYuMTMzOjU0MDFcL2FwaVwvbG9naW4iLCJpYXQiOjE2MTYwNjU1MDcsImV4cCI6MTY0NzYwMTUwNywibmJmIjoxNjE2MDY1NTA3LCJqdGkiOiI5R0ZzT3NWR29VZHhQekVjIn0.6KrU-lLLwS2fpGKGK2mCYDHtiupGilIWH79ZGoTUJQo"
    });
    if (res.isEmpty) return;
    if (res == null) return;
    print(res);
    this._fromJson(res);
  }
}

class Data {
  List<Leave> leave;
  List<Null> leaveEnjoy;
  List<Null> leaveRemaining;

  Data({this.leave, this.leaveEnjoy, this.leaveRemaining});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['leave'] != null) {
      leave = <Leave>[];
      json['leave'].forEach((v) {
        leave.add(new Leave.fromJson(v));
      });
    }
    // if (json['leave_enjoy'] != null) {
    //   leaveEnjoy = new List<Null>();
    //   json['leave_enjoy'].forEach((v) {
    //     leaveEnjoy.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['leave_remaining'] != null) {
    //   leaveRemaining = new List<Null>();
    //   json['leave_remaining'].forEach((v) {
    //     leaveRemaining.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.leave != null) {
      data['leave'] = this.leave.map((v) => v.toJson()).toList();
    }
    // if (this.leaveEnjoy != null) {
    //   data['leave_enjoy'] = this.leaveEnjoy.map((v) => v.toJson()).toList();
    // }
    // if (this.leaveRemaining != null) {
    //   data['leave_remaining'] =
    //       this.leaveRemaining.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Leave {
  String leaveDays;
  String leaveEnjoy;
  String leaveRemaining;

  Leave({this.leaveDays, this.leaveEnjoy, this.leaveRemaining});

  Leave.fromJson(Map<String, dynamic> json) {
    leaveDays = json['leave_days'];
    leaveEnjoy = json['leave_enjoy'];
    leaveRemaining = json['leave_remaining'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['leave_days'] = this.leaveDays;
    data['leave_enjoy'] = this.leaveEnjoy;
    data['leave_remaining'] = this.leaveRemaining;
    return data;
  }
}
