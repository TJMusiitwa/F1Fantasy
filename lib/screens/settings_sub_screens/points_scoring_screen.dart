import 'package:flutter/material.dart';

class PointScoringScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Points Scoring',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Qualifying',
              ),
              Tab(
                text: 'Qualifying Position Bonuses',
              ),
              Tab(
                text: 'Race',
              ),
              Tab(
                text: 'Finishing Position Bonuses',
              ),
              Tab(
                text: 'Streaks',
              ),
            ],
            labelColor: Colors.red,
            indicatorColor: Colors.black,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: [
            QualifyingScoring(),
            QualifyingPositionBonuses(),
            Race(),
            FinishingPositionBonuses(),
            Streaks(),
          ],
        ),
      ),
    );
  }

  Widget QualifyingScoring() {
    return Column(
      children: [
        ListTile(
          title: Text('Q1 Finish'),
          trailing: Text('1 pt'),
        ),
        ListTile(
          title: Text('Q2 Finish'),
          trailing: Text('2 pt'),
        ),
        ListTile(
          title: Text('Q3 Finish'),
          trailing: Text('3 pt'),
        ),
        ListTile(
          title: Text('Qualified ahead of team mate (driver only)'),
          trailing: Text('2 pt'),
        ),
        ListTile(
          title: Text('Did not qualify (driver only)'),
          trailing: Text('-5 pt'),
        ),
        ListTile(
          title: Text('Disqualification from qualifying (driver only)'),
          trailing: Text('-10 pt'),
        ),
      ],
    );
  }

  Widget QualifyingPositionBonuses() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ListTile(
                title: Text('Pole Position'),
                trailing: Text('10 pts'),
              ),
              ListTile(
                title: Text('2nd Place'),
                trailing: Text('9 pts'),
              ),
              ListTile(
                title: Text('3rd Place'),
                trailing: Text('8 pts'),
              ),
              ListTile(
                title: Text('4th Place'),
                trailing: Text('7 pts'),
              ),
              ListTile(
                title: Text('5th Place'),
                trailing: Text('6 pts'),
              ),
              ListTile(
                title: Text('6th Place'),
                trailing: Text('5 pts'),
              ),
              ListTile(
                title: Text('7th Place'),
                trailing: Text('4 pts'),
              ),
              ListTile(
                title: Text('8th Place'),
                trailing: Text('3 pts'),
              ),
              ListTile(
                title: Text('9th Place'),
                trailing: Text('2 pts'),
              ),
              ListTile(
                title: Text('10th Place'),
                trailing: Text('1 pt'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget Race() {
    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text('Finished Race'),
                trailing: Text('1 pt'),
              ),
              ListTile(
                title: Text('Finished race'),
                subtitle:
                    Text('position gained (per place gained, max. +10 pts)'),
                trailing: Text('2 pts'),
              ),
              ListTile(
                title: Text('Finished ahead of team mate (driver only)'),
                trailing: Text('3 pts'),
              ),
              ListTile(
                title: Text('Fastest lap (driver only)'),
                trailing: Text('5 pts'),
              ),
              ListTile(
                title: Text('Started race within Top 10'),
                subtitle: Text(
                    'finished race but lost position (per place lost, max. -10 pts)'),
                trailing: Text('-2 pts'),
              ),
              ListTile(
                title: Text('Started race outside Top 10'),
                subtitle: Text(
                    'finished race but lost position (per place lost, max. -5 pts)'),
                trailing: Text('-1 pt'),
              ),
              ListTile(
                title: Text('Not classified (driver only)'),
                trailing: Text('-15 pts'),
              ),
              ListTile(
                title: Text('Disqualification from race (driver only)'),
                trailing: Text('-20 pts'),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                '* Positions Gained: Positions gained are based on the position a driver starts on the grid',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                '** Classification: Cars that have covered 90% of the number of laps covered by the winner (rounded down to the nears whole number of laps) will be deemed to have finished the race. Cars that have covered less than 90% of the number of laps covered by the winner (rounded down to the nearest whole number of laps), will not be classified. Classifications are based on FIA decisions',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: kBottomNavigationBarHeight,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget FinishingPositionBonuses() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Pole Position'),
            trailing: Text('25 pt'),
          ),
          ListTile(
            title: Text('2nd Place'),
            trailing: Text('18 pt'),
          ),
          ListTile(
            title: Text('3rd Place'),
            trailing: Text('15 pt'),
          ),
          ListTile(
            title: Text('4th Place'),
            trailing: Text('12 pt'),
          ),
          ListTile(
            title: Text('5th Place'),
            trailing: Text('10 pt'),
          ),
          ListTile(
            title: Text('6th Place'),
            trailing: Text('8 pt'),
          ),
          ListTile(
            title: Text('7th Place'),
            trailing: Text('6 pt'),
          ),
          ListTile(
            title: Text('8th Place'),
            trailing: Text('4 pt'),
          ),
          ListTile(
            title: Text('9th Place'),
            trailing: Text('2 pt'),
          ),
          ListTile(
            title: Text('10th Place'),
            trailing: Text('1 pt'),
          ),
        ],
      ),
    );
  }

  Widget Streaks() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Driver Qualifying'),
            subtitle: Text('driver qualifies in Top 10 for 5 races in a row'),
            trailing: Text('5 pts'),
          ),
          ListTile(
            title: Text('Driver Race'),
            subtitle:
                Text('driver finishes race in Top 10 for 5 races in a row'),
            trailing: Text('10 pts'),
          ),
          ListTile(
            title: Text('Constructor Qualifying'),
            subtitle:
                Text('both drivers qualify in Top 10 for 3 races in a row'),
            trailing: Text('5 pts'),
          ),
          ListTile(
            title: Text('Constructor Race'),
            subtitle:
                Text('both drivers finish race in Top 10 for 3 races in a row'),
            trailing: Text('10 pts'),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            '* When a driver or constructor achieves a streak, that streak will reset and must be built up again. For example: A driver achieves five top tens in a row. He will be awarded a streak, but must achieve another five top tens in a row to get streak points for a second time.',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: kBottomNavigationBarHeight,
          )
        ],
      ),
    );
  }
}
