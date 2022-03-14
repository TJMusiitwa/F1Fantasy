import 'package:flutter/material.dart';

class CreateLeagueScreen extends StatelessWidget {
  String _visibility = 'Private';
  int _teamNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a League',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'League Settings',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 25),
              LeagueEntryBox(
                boxTitle: 'League Name',
                boxChild: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter a league Name',
                  ),
                ),
              ),
              LeagueEntryBox(
                  boxTitle: 'Visibility',
                  boxChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: RadioListTile(
                              title: Text('Public'),
                              value: 'Public',
                              groupValue: _visibility,
                              activeColor: Theme.of(context).primaryColor,
                              onChanged: (newValue) {},
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                                title: Text('Private'),
                                value: 'Private',
                                groupValue: _visibility,
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (newValue) {}),
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey),
                      _visibility == 'Public'
                          ? Text(
                              'Anyone can join your league and it will appear in the Games Lobby.',
                              softWrap: true,
                              style: Theme.of(context).textTheme.caption,
                            )
                          : Text(
                              'After creating your league, you will get a unique code that you can share with yor friends, only those with the code can join your game.',
                              softWrap: true,
                              style: Theme.of(context).textTheme.caption,
                            )
                    ],
                  )),
              LeagueEntryBox(
                  boxTitle: 'Length',
                  boxChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Slider.adaptive(
                        min: 1,
                        max: 23,
                        value: 5,
                        onChanged: (length) {},
                        divisions: 23,
                        activeColor: Colors.red,
                      ),
                      Divider(color: Colors.grey),
                      Text(
                        'From here to Abu Dhabi',
                        style: Theme.of(context).textTheme.caption,
                      )
                    ],
                  )),
              LeagueEntryBox(
                boxTitle: 'Maximum teams per player',
                boxChild: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text('1'),
                        value: 1,
                        groupValue: _teamNumber,
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (newValue) {},
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('2'),
                          value: 2,
                          groupValue: _teamNumber,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (newValue) {}),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('3'),
                          value: 3,
                          groupValue: _teamNumber,
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (newValue) {}),
                    ),
                  ],
                ),
              ),
              SizedBox(child: Container()),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Create'),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LeagueEntryBox extends StatelessWidget {
  const LeagueEntryBox(
      {required this.boxTitle, required this.boxChild, Key? key})
      : super(key: key);
  final String boxTitle;
  final Widget boxChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(boxTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 18)),
              const SizedBox(height: 15),
              boxChild
            ],
          ),
        ),
      ),
    );
  }
}
