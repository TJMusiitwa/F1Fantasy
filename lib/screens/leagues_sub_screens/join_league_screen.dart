import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JoinLeagueScreen extends StatelessWidget {
  const JoinLeagueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CloseButton(color: Colors.black),
        title: Image.asset('assets/splash.png',
            width: 170, height: 100, fit: BoxFit.scaleDown),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Join With A Code',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30)),
            const SizedBox(height: 15),
            Text('If you have received a game code,\nenter it here:',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter a league code here',
                  focusedBorder: UnderlineInputBorder()),
            ),
            const SizedBox(height: 50),
            SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Join'),
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor),
                )),
            const SizedBox(height: 50),
            Text('POWERED BY PLAYON')
          ],
        ),
      ),
    );
  }
}
