// ignore_for_file: slash_for_doc_comments, constant_identifier_names

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

/**
 * User Crendentails
 * userDataList[0] => ['app_token'];
 * userDataList[1] => ['emp_id'];
 * userDataList[2] => ['emp_code'];
 * userDataList[3] => ['user_id'];
 * userDataList[4] => ['employee_name'];
 * userDataList[5] => ['email'];
 * userDataList[6] => ['mobile_no'];
 * userDataList[7] => ['role_id'];
 * userDataList[8] => ['role_name'];
 * userDataList[9] => ['reporting_manager_id'];
 * userDataList[10] => ['reporting_manager_name'];
 * userDataList[11] => ['designation_id'];
 * userDataList[12] => ['designation_name'];
 * userDataList[13] => ['department_id'];
 * userDataList[14] => ['department_name'];
 * userDataList[15] => ['zone_id'];
 * userDataList[16] => ['zone_name'];
 * userDataList[17] => ['area_id'];
 * userDataList[18] => ['area_name'];
 * userDataList[19] => ['shift_id'];
 * userDataList[20] => ['shift_name'];
 */

/*
attendanceDataList[0]=>["emp_id"]
attendanceDataList[1]=>["id"]
attendanceDataList[2]=>["user_id"]
attendanceDataList[3]=>["role_id"]
attendanceDataList[4]=>["branch_id"]
attendanceDataList[5]=>["longitude"]
attendanceDataList[6]=>["latitude"]
attendanceDataList[7]=>["start_time"]
attendanceDataList[8]=>["end_time"]
attendanceDataList[9]=>["duration"]
attendanceDataList[10]=>["active_duration"]
attendanceDataList[11]=>["inactive_duration"]
attendanceDataList[12]=>["late_coming"]
attendanceDataList[13]=>["early_going"]
attendanceDataList[14]=>["holiday"]
attendanceDataList[15]=>["overtime"]
attendanceDataList[16]=>["todays_date"]
attendanceDataList[17]=>["month"]
attendanceDataList[18]=>["year"]
attendanceDataList[19]=>["day"]
attendanceDataList[20]=>["week_day_number"]
attendanceDataList[21]=>["from_where"]
attendanceDataList[22]=>["punch_in_image"]
attendanceDataList[23]=>["created_by"]
attendanceDataList[24]=>["created_type"]
attendanceDataList[25]=>["created_on"]
attendanceDataList[26]=>["modified_by"]
attendanceDataList[27]=>["modified_type"]
attendanceDataList[28]=>["modified_on"]*/

// userDataRetrive() async {
//   final prefs = await SharedPreferences.getInstance();
//   prefs.setStringList("userSharedprefKey", userSharedprefKey); //const userSharedprefKey = 'userSharedprefKey';
// }
//final prefs = await SharedPreferences.getInstance();
const userSharedprefKey = 'userSharedprefKey';
const userSharedprefKeyattendance = 'userSharedprefKey';

//variable--shaved Listdata during get in sharedPrefrences
List<String> userData = [];
List<String> userAttanDanceData = [];
var userisLogin = 'isUserLogin';
var userattendance = 'userattendance';
//variable--shaved Listdata during set in sharedPrefrences
List<String> userdatalist = [];

List<String> attendanceDataList = [];
SharedPreferences? myPref;
//BASE URL
const baseAPIURL = 'https://soc.vvelocity.com/ci_payroll/payroll_api/api/';

String getPunchIn({
  String? startTime,
  String? longitude,
  String? latitude,
  String? punchImage,
  String? empId,
  String? userId,
  String? roleId,
  String? today,
}) {
  return '${baseAPIURL}punch_in?start_time=${startTime ?? ""}&longitude=${longitude ?? ""}&latitude=${latitude ?? ""}&emp_id=${empId ?? ""}&user_id=${userId ?? ""}&role_id=${roleId ?? ""}&today=${today ?? ""}&punch_image=${punchImage ?? ""}';
}

//------login
const LOGIN_ADD = 'login';

String get addLoginURL {
  return baseAPIURL + LOGIN_ADD;
}

String loginLink(String userName, String password) {
  return '${baseAPIURL}login?user_name=$userName&password=$password';
}

const attendance = 'api_attendance_user/1';

String get attendanceUrl {
  return baseAPIURL + attendance;
}

const punchIn = 'punch_in';

String get addPunchIn {
  return baseAPIURL + punchIn;
}

//=========================END LOGIN==========
