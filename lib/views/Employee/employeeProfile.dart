import 'package:extraworkers/controllers/EmployeeController.dart';
import 'package:extraworkers/models/Employee.dart';
import 'package:flutter/material.dart';

class EmployeeProfile extends StatefulWidget {
  const EmployeeProfile({super.key});
  @override
  State<EmployeeProfile> createState() => _EmployeeProfileState();
}

class _EmployeeProfileState extends State<EmployeeProfile> {
  late Future<Employee> futureEmployeeProfile;

  @override
  void initState() {
    super.initState();
    futureEmployeeProfile = fetchEmployeeInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Center(
            child: FutureBuilder<Employee>(
          future: futureEmployeeProfile,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.name + " \n" + snapshot.data!.surname);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        )));
  }
}
