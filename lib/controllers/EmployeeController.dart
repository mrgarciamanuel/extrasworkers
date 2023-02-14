import 'package:extraworkers/models/Employee.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Employee> fetchEmployeeInfo() async {
  var url = "http://sistemaextrasapi.test/api/getSingleEnployee.php?&id=1";

  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return Employee.fromJson(json.decode(response.body));
  } else {
    throw Exception("No data found");
  }
}
