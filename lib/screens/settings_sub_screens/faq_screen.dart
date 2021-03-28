import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            leading: CloseButton(
              color: Colors.red,
            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Frequently Asked Questions'),
              background: Image.asset(
                'assets/top.jpg',
                colorBlendMode: BlendMode.darken,
                color: Colors.black54,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text('Signing Up'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'How do I sign up to play F1® Fantasy?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    '\n\nJust create an F1® Account by visiting fantasy.formula1.com. Once you have created your F1® Account you can start playing F1® Fantasy.')
                          ],
                        ),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Teams'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text:
                                'Can I pick both drivers from the same constructor and that constructor?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  '\n\nThe only restriction is to stay under the budget, initially set at \$100m. So long as you can afford both drivers and constructor you can add them to your team.')
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'Can I have more than one team?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  '\n\nYou can pick up to three F1® Fantasy teams to manage throughout the season.')
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'What is the Turbo Driver?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  '\n\nYou must select one driver to be your Turbo Driver for each race. Turbo Driver is a booster that multiplies the points scored by the selected driver by 2x. Only drivers priced at under \$20m can be selected as your Turbo Driver.')
                        ]),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'What is the Mega Driver?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  '\n\nMega Driver is a booster that multiplies the points scored by the selected driver by 3x. Mega Driver can be applied to any driver except your Turbo Driver, there is no price restriction on your Mega Driver. You have two Mega Driver plays per season - one for the European races (first 8 races) and one after.')
                        ]),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'What is the Wildcard?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  '\n\nThe Wildcard allows you to make unlimited changes to your team without penalty. You have two Wildcard plays per season - one for the European races (first 8 races) and one after.')
                        ]),
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Leagues'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'How do I join the Global F1 League to play for the main prize?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    '\n\nWhen you save your team 1 it is automatically joined into the Global F1® League. Only your team 1 is eligible to join the Global F1® League.')
                          ],
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'How do I create a private league for my friends and I?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    '\n\nOnce you have saved your first team, click on the leagues page and then the Create a League button in the top right. Set up your league and then share the invite code with your friends.')
                          ],
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'How do I join a private league?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    '\n\nOnce you have saved a team you can join a private league – if you have the league code just enter this in the Join with a code link above the leagues lobby. There are also lots of public leagues available for you to join in the lobby.')
                          ],
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'How do I delete a league?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    '\n\nYou can delete a league you have created if you are the only entrant into the league. To delete a league just go to the Leagues - Joined tab, click the three dots on the league you want to delete and click Delete League.')
                          ],
                        ),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'What can I win?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text:
                                    '\n\nThere are lots of prizes on offer for the Global F1® League and other leagues. View all prizes on the prizes page here')
                          ],
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Contact Us'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text:
                                    'For issues related to signing up, logging in or with your F1 Account, please email: '),
                            TextSpan(
                                text: 'general@en.formula1.com',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.underline)),
                          ]),
                          softWrap: true),
                      SizedBox(
                        height: 10,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text:
                                'For any issues or suggestions related to the fantasy game, please email: '),
                        TextSpan(
                            text: 'f1@playon.co',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.underline)),
                      ]))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
