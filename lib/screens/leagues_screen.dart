import 'dart:io';

import 'package:f1_fantasy/screens/leagues_sub_screens/create_league_screen.dart';
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
                        onValueChanged: (value) =>
                            setState(() => _selectedIndexValue = value),
                        selectedColor: Colors.red,
                        borderColor: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: iOSContent[_selectedIndexValue],
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
    Key key,
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
                .headline5
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
              OutlineButton.icon(
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                ),
                label: Text('JOIN WITH A CODE'),
                onPressed: () {
                  Platform.isIOS
                      ? showCupertinoDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (_) => CupertinoAlertDialog(
                            title: Text('Join with a code'),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'If you have received a league code,enter it here:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CupertinoTextField(
                                  placeholder: 'Enter a league code here',
                                ),
                              ],
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: Text('JOIN'),
                                onPressed: () {},
                                textStyle: TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        )
                      : showDialog(
                          context: context,
                          builder: (_) => SimpleDialog(
                            title: Center(child: Text('Join with a code')),
                            children: [
                              Text(
                                'If you have received a league code,enter it here:',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(fontWeight: FontWeight.w300),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter a league code here',
                                    labelText: 'League Code',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ElevatedButton(
                                  child: Text('JOIN'),
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
