import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                child: Text(
                  'Looking for Something?',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryTextColor,
                  ),
                ),
              ),
              TextField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                    vertical: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(kBorderRadius)),
                    borderSide: BorderSide(
                      color: kSecondaryTextColor.withOpacity(0.5),
                      width: 0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(kBorderRadius)),
                    borderSide: BorderSide(
                      color: kPrimaryColor.withOpacity(0.5),
                      width: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
