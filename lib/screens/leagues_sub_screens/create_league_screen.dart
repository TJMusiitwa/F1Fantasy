import 'package:flutter/material.dart';

class CreateLeagueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a League',
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'League Name', hintText: 'Enter League Name'),
            ),
            SizedBox(
              height: 15,
            ),
            Text('League Length'),
            Slider.adaptive(
              min: 1,
              max: 23,
              value: 5,
              onChanged: (length) {},
              divisions: 23,
              activeColor: Colors.red,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
