import 'package:flutter/material.dart';

class GameRulesScreen extends StatelessWidget {
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
              title: Text('Game Rules'),
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
                    title: Text('Teams'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'You can pick up to three F1 Fantasy teams to manage throughout the season, each having 5 drivers and 1 constructor from an initial \$100m budget. There are no restrictions on how many drivers you can pick from any one Formula 1 team. Your teams will score points based on your selected team members\' performance in Grands Prix during the 2021 season - all 5 drivers and 1 constructor score points each raceweek.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'You can make as many changes to your team as you wish before the season starts. It is the last saved version of your team each week that gets entered into all the leagues you have joined.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        r'Initially you have a budget of $100m to spend on your drivers and constructor. As your drivers and constructor increase or decrease in price throughout the season, these price changes get reflected in your total value, which is the sum of your team value and your remaining budget. If one of your drivers goes up in value, you can lock in that price increase by removing him from your team so you have more budget available to spend on other drivers. As such, your available budget and the available budgets of other players in F1 Fantasy may be greater than or less than $100m as the season progresses.',
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Joining Leagues'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'Leagues enable groups of people to enter their F1 Fantasy teams against each other and compete for top position in the league leaderboard. Leagues may last from two raceweeks up to the whole season. Your team 1 is automatically entered into the Global F1 League, as well as the league of your home country and the league of your favourite constructor - only your team 1 can be entered into these leagues. You can join as many public leagues as you want in the Leagues Lobby. You can also create and enter private leagues with your friends - these can be single-entry (one team per user), double-entry (up to two teams per user) or triple-entry (up to three teams per user) leagues. These leagues can be private or public and can be easily joined by friends through the unique code for each league.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Managing Your Teams'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'Before the season starts you can make as many changes to your teams as you wish. Once the season starts you get a Subs Bank as described below to manage your team each raceweek. You also get 2 Wildcards per season as described below.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Subs Bank'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        r'The Subs Bank allows you to make up to 6 substitutions to your team each raceweek before the team lock time. The first 3 substitutions each raceweek are free, with additional substitutions incurring a penalty of -10pts per substitution. Each time you save a team substitution your Subs Bank is reduced by one. You can only make as many substitutions to your team as your Subs Bank allows before the team lock time.   Unused substitutions do not carry forward to the following raceweek. With prices changing continuously due to Dynamic Pricing, you can use your Subs Bank to grow your budget above $100m so as the season progresses, you can afford better drivers and constructors to score more points.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Turbo Driver'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'You must select one driver per team to be your Turbo Driver each raceweek - this player will score 2x points.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your Turbo Driver can be a different driver each raceweek but must cost less than \$20m and must be selected prior to saving your team. You can change your Turbo Driver each raceweek without penalty as Turbo Driver changes do not count as a substitution. If your Turbo Driver\'s price increases to \$20m or above after you have selected him as your Turbo Driver, he will remain your Turbo Driver for the current raceweek and will score 2x points. However at the start of the next raceweek, if your Turbo Driver is still priced at \$20m or above, the Turbo Driver will be automatically changed to the next highest priced driver in your team priced below \$20m.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'If your Turbo Driver finishes with negative points, his negative score will be doubled: -2 points will become -4 points.',
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Mega Driver'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'Mega Driver is a booster that multiplies the points scored by the selected driver by 3x. Apart from your Turbo Driver, any driver in your team can be selected as your Mega Driver – no price restrictions apply for the Mega Driver.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'You get two Mega Driver plays per season – one in the first half of the season up to the summer break and one after the break for the second half of the season. If you do not user your first Mega Driver play before the summer break it will not be carried forward after the break. Once your Mega Driver plays are used, you cannot use them again for the rest of the season.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'If your Mega Driver finishes with negative points, his negative score will be tripled: -3 points will become -9 points.',
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Wildcard'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'The Wildcard allows you to make up to 12 substitutions for free in the raceweek you play it, enabling you to make a full team reset and to make additional substitutions to grow your budget. You get two Wildcard plays per season - one in the first half of the season up to the summer break and one after for the second half of the season. If you do not use your first Wildcard play before the summer break it will not be carried forward after the break. Once your Wildcards are played you cannot use them again for the rest of the season.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Dynamic Pricing'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'Prices change continuously based on performance and on users making team substitutions. You can use your Subs Bank to grow your budget above \$100m by adding and removing drivers and constructors from your team each raceweek, giving you more to spend on other drivers and constructors as the season progresses.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'As prices may change frequently, it is the price of a newly added driver or constructor at the time you save your team that will be applied, even if that price is slightly different from the price you saw on screen when you were originally selecting the driver or constructor.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Team Lock'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'At the start of qualifying each raceweek all teams are locked and no more substitutions can be made for that raceweek. Once the team lock happens, all fantasy teams for that raceweek become visible for all users to see in the league leaderboards. The next raceweek is also opened at the team lock time so you can continue to add and remove drivers and constructors from your teams and increase your available budget for the following raceweek.',
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Points Scoring'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'Your drivers and constructors score points based on their performance in qualifying and race each raceweek. All 5 drivers and 1 constructor score points each raceweek, in line with the Points Scoring table.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Constructors score all points accumulated by their drivers apart from "driver only" scoring categories ("beat team mate" bonuses and "driver streak" bonuses). The relevant driver totals (excluding driver only categories) are combined to give the constructor points total - for example: Mercedes = Hamilton + Bottas scores.',
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Positions gained are based on the position the driver starts at on the grid as this may differ from where they finished in qualifying.',
                        softWrap: true,
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Live Raceweek'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'All driver and constructor data updates in real time so you can keep track of how your teams are performing as the racing unfolds. League leaderboards are then updated after the Grand Prix finishes.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Post Race'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'Results for each raceweek are confirmed shortly after the race finishes. League leaderboards are then updated to reflect the finalised standings for that race so you can see performance against your friends and the general public.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Postponed and Cancelled Races'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                        'If a Formula 1 Grand Prix is postponed within the same season, points related to that Grand Prix will count when the Grand Prix happens. If a Formula 1 Grand Prix is cancelled, there will be no points related to the cancelled Grand Prix in F1 Fantasy.',
                        softWrap: true,
                      )
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Others'),
                    childrenPadding: const EdgeInsets.all(10),
                    children: [
                      Text(
                          'FIA Penalties will not be applied in F1 Fantasy 2021.\n\nFor details of all other Terms and Conditions and our Privacy Policy, please visit these pages.'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
