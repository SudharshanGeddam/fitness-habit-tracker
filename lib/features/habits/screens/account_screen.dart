import 'package:fitness_habit_tracker/core/constants/app_icons.dart';
import 'package:fitness_habit_tracker/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: ImageIcon(AppIcons.appIcon, color: Colors.blue),
          title: Text("Account", style: context.textTheme.titleMedium),
          centerTitle: true,
          actions: [PopupMenuButton(itemBuilder: (context) => [])],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: context.cardColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/icons/gold_badge.png'),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Upgrade Plan Now!'),
                              const SizedBox(height: 5),
                              Text('Enjoy all the benefits!'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: context.cardColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/icons/gold_badge.png'),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Level 9'),
                              const SizedBox(height: 5),
                              Text('You are a rising star!Keep going!'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: context.cardColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.settings),
                            const SizedBox(width: 10),
                            Text('Preferences'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.person_outline),
                            const SizedBox(width: 10),
                            Text('Personal Info'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.payment_sharp),
                            const SizedBox(width: 10),
                            Text('Payment Methods'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.star_border_rounded),
                            const SizedBox(width: 10),
                            Text('Billing & Subscriptions'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.security),
                            const SizedBox(width: 10),
                            Text('Account & Security'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.remove_red_eye_outlined),
                            const SizedBox(width: 10),
                            Text('App Appearence'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.analytics_outlined),
                            const SizedBox(width: 10),
                            Text('Data & Analytics'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.repeat),
                            const SizedBox(width: 10),
                            Text('Linked Accounts'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.help_outline_outlined),
                            const SizedBox(width: 10),
                            Text('Help & Support'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.logout),
                            const SizedBox(width: 10),
                            Text('Logout'),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
