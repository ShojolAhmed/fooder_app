import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: 24,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/user.png'),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name, U.',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryTextColor,
                            ),
                          ),
                          Text(
                            'username@demomail.com',
                            style: TextStyle(color: kSecondaryTextColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              UserScreenButton(
                label: 'General',
                onPressed: () {},
              ),
              const Divider(),
              UserScreenButton(
                label: 'User Settings',
                onPressed: () {},
              ),
              const Divider(),
              UserScreenButton(
                label: 'About Us',
                onPressed: () {},
              ),
              const Divider(),
              UserScreenButton(
                label: 'Rate Us',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserScreenButton extends StatelessWidget {
  const UserScreenButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        shape: const BeveledRectangleBorder(),
        alignment: Alignment.centerLeft,
        foregroundColor: kPrimaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
