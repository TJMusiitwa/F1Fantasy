import 'package:f1_fantasy/screens/gameplay/gameplay_screen.dart';
import 'package:f1_fantasy/screens/leaderboards/leaderboards_screen.dart';
import 'package:f1_fantasy/screens/lobby/leagues_screen.dart';
import 'package:f1_fantasy/screens/my_games/summary_screen.dart';
import 'package:f1_fantasy/screens/teams/teams_screens.dart';
import 'package:flutter/material.dart';

class FantasyNav extends StatefulWidget {
  @override
  _FantasyNavState createState() => _FantasyNavState();
}

class _FantasyNavState extends State<FantasyNav> {
  var _screens = [
    TeamsScreens(),
    LobbyScreen(),
    SummaryScreens(),
    LeaderboardsScreen(),
    GamePlayScreen()
  ];

  var _currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentScreen),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Teams', icon: Icon(Icons.remember_me_outlined)),
          BottomNavigationBarItem(
              label: 'Lobby', icon: Icon(Icons.list_outlined)),
          BottomNavigationBarItem(
              label: 'My Games', icon: Icon(Icons.playlist_add_check)),
          BottomNavigationBarItem(
              label: 'Leaderboards', icon: Icon(Icons.leaderboard_outlined)),
          BottomNavigationBarItem(
              label: 'Gameplay', icon: Icon(Icons.assessment_outlined)),
        ],
        currentIndex: _currentScreen,
        //type: BottomNavigationBarType.fixed,
        onTap: (newScreen) => setState(() => _currentScreen = newScreen),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class FantasyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: ColoredBox(
              color: Color(0xFFD80000),
              child: Column(
                children: [
                  ColoredBox(
                    color: Color(0xFFD80000),
                    child: DrawerHeader(
                      child: Image.asset(
                        'assets/splash.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.remember_me_outlined),
                    title: Text('Teams'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text('Lobby'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.add_circle_outline),
                    title: Text('Create/Join'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.playlist_add_check),
                    title: Text('My Games'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.leaderboard_outlined),
                    title: Text('Leaderboards'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.assessment_outlined),
                    title: Text('Gameplay'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  //* Divider
                  Divider(color: Colors.white),

                  ListTile(
                    leading: Icon(Icons.loop_outlined),
                    title: Text('Subs Bank'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.price_change_outlined),
                    title: Text('Dynamic Pricing'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.emoji_events_outlined),
                    title: Text('Prizes'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.notes_outlined),
                    title: Text('Game Rules'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.show_chart_outlined),
                    title: Text('Points Scoring'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('FAQ'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.new_releases_outlined),
                    title: Text('What\'s New'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(Icons.language_outlined),
                    title: Text('Formula1.com'),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  ColoredBox(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.live_tv_outlined),
                          title: Text('F1 TV'),
                        ),
                        ListTile(
                          leading: Icon(Icons.sports_motorsports_outlined),
                          title: Text('Authentics'),
                        ),
                        ListTile(
                          leading: Icon(Icons.shopping_bag_outlined),
                          title: Text('Store'),
                        ),
                        ListTile(
                          leading: Icon(Icons.confirmation_num_outlined),
                          title: Text('Tickets'),
                        ),
                        ListTile(
                          leading: Icon(Icons.diamond_outlined),
                          title: Text('Hospitality'),
                        ),
                        ListTile(
                          leading: Icon(Icons.star_outline_rounded),
                          title: Text('Experiences'),
                        ),
                        const SizedBox(height: 150)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 150),
              child: ColoredBox(
                color: Color(0xFFD80000),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings_outlined),
                      title: Text('Settings'),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                    ListTile(
                      leading: Icon(Icons.logout_outlined),
                      title: Text('Log Out'),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                    ),
                    Text('POWERED BY PLAYON')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
