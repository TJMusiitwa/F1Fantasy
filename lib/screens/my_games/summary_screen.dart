import 'package:f1_fantasy/widgets/fantasy_appbar.dart';
import 'package:flutter/material.dart';

class SummaryScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FantasyAppBar(
        appTitle: 'My Games',
        pageAction:
            IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined)),
      ),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sort By'),
                          CloseButton(color: Colors.grey)
                        ],
                      ),
                      Divider(color: Colors.grey),
                      Text('Start Date'),
                      Text('Name'),
                      Text('Popularity'),
                      Text('Trending'),
                      Divider(color: Colors.grey),
                      Text('Ascending'),
                      Text('Descending'),
                    ],
                  ),
                );
              });
        },
        label: Text('SORTED BY POPULARITY'),
        icon: Icon(Icons.sort_outlined),
        extendedTextStyle: Theme.of(context).textTheme.bodyText2,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    );
  }
}
