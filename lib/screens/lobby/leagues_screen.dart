import 'package:f1_fantasy/screens/leagues_sub_screens/create_league_screen.dart';
import 'package:f1_fantasy/widgets/fantasy_appbar.dart';
import 'package:flutter/material.dart';

import '../leagues_sub_screens/join_league_screen.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FantasyAppBar(
        appTitle: 'Lobby',
        pageAction:
            IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined)),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Join with Code',
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.red,
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      // backgroundColor: Theme.of(context).primaryColor,
                      primary: Colors.black),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => JoinLeagueScreen(),
                      fullscreenDialog: true)),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create League',
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      primary: Colors.white,
                      textStyle: Theme.of(context).textTheme.button),
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => CreateLeagueScreen())),
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(primary: Colors.black),
                child: Row(
                  children: [
                    Text('Upcoming'),
                    Icon(Icons.expand_more_outlined)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
