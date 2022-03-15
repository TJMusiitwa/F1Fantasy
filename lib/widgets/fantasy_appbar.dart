import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class FantasyAppBar extends StatelessWidget implements PreferredSizeWidget {
  FantasyAppBar({
    required this.appTitle,
    this.pageAction,
    Key? key,
  });

  final String appTitle;
  final Widget? pageAction;

  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appTitle,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.white),
      ),
      actions: [
        pageAction ?? SizedBox.shrink(),
        IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => SettingsScreen())),
            icon: Icon(Icons.menu_open_outlined))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
