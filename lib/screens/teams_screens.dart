import 'package:carousel_slider/carousel_slider.dart';
import 'package:f1_fantasy/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class TeamsScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DropdownButton(
          items: [],
          onChanged: (value) {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Theme.of(context).primaryColor,
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => SettingsScreen())),
            iconSize: 30,
          )
        ],
      ),
      body: Container(
        child: CarouselSlider(
          items: [
            Container(
              child: Center(child: Text('2')),
              color: Colors.teal,
            ),
            Container(
              child: Center(child: Text('2')),
              color: Colors.orange,
            ),
            Container(
              child: Center(child: Text('Team 3')),
              color: Colors.blueGrey,
            ),
          ],
          options: CarouselOptions(
            height: 350,
            initialPage: 0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
