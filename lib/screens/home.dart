import "package:flutter/material.dart";
import "package:kohoclone/components/action_button.dart";
import "package:kohoclone/components/custom_tile.dart";
import "package:kohoclone/components/suggestedCompnent.dart";
import "package:kohoclone/constants/colors.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          leading: IconButton(
            icon: Icon(
              Icons.person_2_rounded,
              size: 28,
            ),
            onPressed: () {},
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.redeem,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
                Text(
                  'Get \$20',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 5),
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  size: 28,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                color: backgroundColor,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, Sam",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$240,709.45',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // account actions
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionButtonComponent(
                      label: "Add Money",
                      icon: Icons.add,
                      onPressed: () {},
                    ),
                    ActionButtonComponent(
                      label: "My Cards",
                      icon: Icons.wallet,
                      onPressed: () {},
                    ),
                    ActionButtonComponent(
                      label: "Send Money",
                      icon: Icons.send,
                      onPressed: () {},
                    )
                  ],
                ),
              ),

              //

              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    CustomTileComponent(
                      title: 'Cover',
                      subTitle: '\$50.00',
                      icon: Icons.money,
                      trailingMessage: 'Unlock now',
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    CustomTileComponent(
                      title: 'Cash back',
                      subTitle: 'Earn on groceris and more',
                      icon: Icons.flash_on,
                      trailingMessage: '\$10.00',
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    CustomTileComponent(
                      title: 'Interest - 0.5%',
                      subTitle: '',
                      icon: Icons.interests,
                      trailingMessage: '\$240.45',
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, bottom: 10),
                child: Text(
                  'Suggested for you',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 150,
                padding: EdgeInsets.only(
                  left: 10,
                ),
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SuggestedComponent(
                        message:
                            'New - Build your credit with a secured credit line'),
                    SuggestedComponent(
                        message:
                            'Get up to 2% cash back on everyday necessities'),
                    SuggestedComponent(
                        message:
                            'Build your credit history, unlock opportunities'),
                    SuggestedComponent(
                        message:
                            'Refer friends and earn up to \$1000 in rewards'),
                    SuggestedComponent(
                        message: 'Create a joint account for two'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
