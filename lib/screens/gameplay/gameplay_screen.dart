import 'package:flutter/material.dart';

import '../../widgets/fantasy_appbar.dart';

class GamePlayScreen extends StatelessWidget {
  const GamePlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FantasyAppBar(appTitle: 'Gameplay'),
    );
  }
}
