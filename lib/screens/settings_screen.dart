import 'dart:io' show Platform;

import 'package:f1_fantasy/screens/settings_sub_screens/faq_screen.dart';
import 'package:f1_fantasy/screens/settings_sub_screens/game_rules_screen.dart';
import 'package:f1_fantasy/screens/settings_sub_screens/points_scoring_screen.dart';
import 'package:flutter/cupertino.dart' show showCupertinoModalPopup;
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  child: Icon(
                    Icons.sports_motorsports,
                    color: Colors.white,
                    size: 25,
                  ),
                  backgroundColor: Colors.redAccent,
                  maxRadius: 40,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.menu_book_outlined,
                  color: Colors.red,
                ),
                title: Text('Game Rules'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => GameRulesScreen(),
                        fullscreenDialog: true)),
              ),
              ListTile(
                leading: Icon(
                  Icons.insert_chart_outlined,
                  color: Colors.red,
                ),
                title: Text('Points Scoring'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PointScoringScreen(),
                        fullscreenDialog: true)),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.red,
                ),
                title: Text('FAQ'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => FAQScreen(), fullscreenDialog: true)),
              ),
              ListTile(
                leading: Icon(
                  Icons.language,
                  color: Colors.red,
                ),
                title: Text('Change language'),
                onTap: () => Platform.isIOS
                    ? showCupertinoModalPopup(
                        context: context,
                        builder: (_) {
                          return Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            child: Material(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ListTile(
                                    leading: Text(
                                      '🇩🇪',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    title: Text('Deutsch'),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '🇬🇧',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    title: Text('English'),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '🇪🇸',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    title: Text('Español'),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '🇫🇷',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    title: Text('Français'),
                                  ),
                                  ListTile(
                                    leading: Text(
                                      '🇮🇹',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    title: Text('Italiano'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })
                    : showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return Container(
                            height: MediaQuery.of(context).size.height / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ListTile(
                                  leading: Text(
                                    '🇩🇪',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  title: Text('Deutsch'),
                                ),
                                ListTile(
                                  leading: Text(
                                    '🇬🇧',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  title: Text('English'),
                                ),
                                ListTile(
                                  leading: Text(
                                    '🇪🇸',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  title: Text('Español'),
                                ),
                                ListTile(
                                  leading: Text(
                                    '🇫🇷',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  title: Text('Français'),
                                ),
                                ListTile(
                                  leading: Text(
                                    '🇮🇹',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  title: Text('Italiano'),
                                ),
                              ],
                            ),
                          );
                        }),
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.red,
                ),
                title: Text('About F1 Fantasy'),
                onTap: () => showLicensePage(context: context),
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_sharp,
                  color: Colors.red,
                ),
                title: Text('Log Out'),
                onTap: () {},
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                'v1.0.0',
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                'F1 Fantasy and registered trademarks are property of the Formula 1 Group.',
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ),
    );
  }
}
