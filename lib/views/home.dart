import 'package:flutter/material.dart';
import 'package:extraworkers/views/Employee/employeeProfile.dart';
import 'package:extraworkers/views/Employee/findJobs.dart';
import 'package:extraworkers/views/Employee/chatEmployee.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen, brightness: Brightness.light),
      home: const RootPage(),
    );
  }
}

//method for rooting among pages
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  //variavel que vai gerir o elemento no qual passamos o mouse
  int _currentIndex = 0;
  final List<Widget> _children = [
    const FindJobs(),
    const ChatEmployee(),
    const EmployeeProfile(),
    //notiifation
  ];

  //this method will pass the page index()
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //the scafford has three parts: appBar, body and navigation bar
      //procurar retornar um ficheiro

      body: _children[_currentIndex],

      //o que vai mudar na verdade é apenas o body da página, porque tanto header como bottonNavigationBar vão continuar sendo os mesmos
      //const HomePageSoundShare(), //retornando a home page da app que está em home_page.dart e que foi importado em cima

      bottomNavigationBar: BottomNavigationBar(
        //quando uma página for clicada, a variável current vai receber o indice da página atual
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: ('Find jobs')),
          BottomNavigationBarItem(icon: new Icon(Icons.add), label: ('Chat')),
          BottomNavigationBarItem(icon: new Icon(Icons.person), label: ('Profile'))
        ],
      ),
    );
    //in side scaffold we have three things: appbar, body and navifagation bar
  }
}
