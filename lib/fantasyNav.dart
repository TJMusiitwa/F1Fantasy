import 'package:f1_fantasy/screens/leagues_screen.dart';
import 'package:f1_fantasy/screens/summary_screen.dart';
import 'package:f1_fantasy/screens/teams_screens.dart';
import 'package:flutter/material.dart';

class FantasyNav extends StatefulWidget {
  @override
  _FantasyNavState createState() => _FantasyNavState();
}

class _FantasyNavState extends State<FantasyNav> {
  var _screens = [
    TeamsScreens(),
    LeaguesScreen(),
    SummaryScreens(),
  ];

  var _currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentScreen),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Teams', icon: Icon(Icons.badge)),
          BottomNavigationBarItem(label: 'Leagues', icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              label: 'Summary', icon: Icon(Icons.pie_chart)),
        ],
        currentIndex: _currentScreen,
        onTap: (newScreen) => setState(() => _currentScreen = newScreen),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        backgroundColor: Colors.white,
      ),
    );
  }
}
