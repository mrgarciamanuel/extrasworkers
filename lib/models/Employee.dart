//import 'dart:convert' as convert;

class Employee {
  final String id;
  final String name;
  final String surname;
  final String username;
  final String gender;
  final String description;
  final String email;
  final String nif;
  final String phone;
  final String profession1;
  final String profession2;
  final String profession3;
  final String country;
  //final String location;
  final String cvhref;
  final String accountstate;
  final String tsdia;
  //final int linkedcompany;to be optional

  const Employee(
      {required this.id,
      required this.name,
      required this.surname,
      required this.username,
      required this.gender,
      required this.description,
      required this.email,
      required this.nif,
      required this.phone,
      required this.profession1,
      required this.profession2,
      required this.profession3,
      required this.country,
      //required this.location,
      required this.cvhref,
      required this.accountstate,
      required this.tsdia});

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json['id'].toString(),
        name: json['name'].toString(),
        surname: json['surname'].toString(),
        username: json['username'].toString(),
        gender: json['gender'].toString(),
        description: json['description'].toString(),
        email: json['email'].toString(),
        nif: json['nif'].toString(),
        phone: json['phone'].toString(),
        profession1: json['profession1'].toString(),
        profession2: json['profession2'].toString(),
        profession3: json['profession3'].toString(),
        country: json['country'].toString(),
        //location: json['location'].toString(),
        cvhref: json['cvhref'].toString(),
        accountstate: json['accountstate'].toString(),
        tsdia: json['tsdia'].toString(),
      );
}
