import 'package:flutter/material.dart';

import '../../widgets/fantasy_appbar.dart';

class LeaderboardsScreen extends StatelessWidget {
  const LeaderboardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FantasyAppBar(appTitle: 'Leaderboards'),
    );
  }
}
