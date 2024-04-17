import 'package:flutter/material.dart';
import 'package:appsolute2/screens/FirstScreen.dart';
import 'package:appsolute2/screens/SecondScreen.dart';
import 'package:appsolute2/screens/three_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home : MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

  }
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Myapp'),
      bottom: TabBar(
        controller: _tabController,
        tabs: [
          Tab(
            text: 'Tab1',
          ),
          Tab(
            text: 'Tab2',
          ),
          Tab(
            text: 'Tab3',
          ),
        ],
      )
    ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen ()),
                );
              },
              child: Text(
                'Use stack'
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen ()),
                );
              },
              child: Text(
                  'Use stack'
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstScreen ()),
                );
              },
              child: Text(
                  'Use stack'
              ),
            ),
          ),
        ],
      ),
    );
  }
}