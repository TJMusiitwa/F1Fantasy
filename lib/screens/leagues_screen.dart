import 'dart:io';

import 'package:f1_fantasy/screens/leagues_sub_screens/create_league_screen.dart';
import 'package:f1_fantasy/screens/leagues_sub_screens/join_league_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaguesScreen extends StatefulWidget {
  @override
  _LeaguesScreenState createState() => _LeaguesScreenState();
}

class _LeaguesScreenState extends State<LeaguesScreen> {
  final Map<int, Widget> leagueTitles = const <int, Widget>{
    0: Text('LOBBY'),
    1: Text('JOINED')
  };

  final Map<int, Widget> iOSContent = <int, Widget>{
    0: LobbyTab(),
    1: JoinedTab(),
  };

  int _selectedIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 500,
                      child: CupertinoSegmentedControl(
                        children: leagueTitles,
                        groupValue: _selectedIndexValue,
                        onValueChanged: (int value) =>
                            setState(() => _selectedIndexValue = value),
                        selectedColor: Colors.red,
                        borderColor: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: iOSContent[_selectedIndexValue] as Widget,
                    )
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => CreateLeagueScreen())),
              child: Icon(Icons.add),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          )
        : AndroidLeagueScreen();
  }
}

class JoinedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AndroidLeagueScreen extends StatelessWidget {
  const AndroidLeagueScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Leagues',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'LOBBY'),
              Tab(text: 'JOINED'),
            ],
            indicatorColor: Colors.black,
            labelColor: Colors.red,
          ),
        ),
        body: TabBarView(
          children: [LobbyTab(), JoinedTab()],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => CreateLeagueScreen())),
          child: Icon(Icons.add),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class LobbyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              OutlinedButton.icon(
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                ),
                label: Text('JOIN WITH A CODE'),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => JoinLeagueScreen(),
                    fullscreenDialog: true)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
