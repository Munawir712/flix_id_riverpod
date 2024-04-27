import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../misc/methods.dart';
import 'methods/profile_item.dart';
import 'methods/user_info.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              ...userInfo(ref),
              const Divider(),
              verticalSpace(20),
              profileItem(
                'Update Proifle',
              ),
              verticalSpace(20),
              profileItem(
                'My Wallet',
              ),
              verticalSpace(20),
              profileItem(
                'Change Password',
              ),
              verticalSpace(20),
              profileItem(
                'Change Language',
              ),
              verticalSpace(20),
              const Divider(),
              verticalSpace(20),
              profileItem(
                'Contact Us',
              ),
              verticalSpace(20),
              profileItem(
                'Privacy Policy',
              ),
              verticalSpace(20),
              profileItem(
                'Terms and Conditions',
              ),
              verticalSpace(60),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              verticalSpace(20),
              const Text(
                'Version 0.0.1',
                style: TextStyle(color: Colors.white),
              ),
              verticalSpace(50)
            ],
          ),
        )
      ],
    );
  }
}
