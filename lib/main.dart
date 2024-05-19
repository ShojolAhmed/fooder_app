import 'package:flutter/material.dart';
import 'package:fooder_app/screens/home_screen.dart';
import 'package:fooder_app/screens/search_screen.dart';
import 'package:fooder_app/screens/shop_screen.dart';
import 'package:fooder_app/screens/user_screen.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:fooder_app/values/constants.dart';
import 'package:fooder_app/values/styles.dart';
import 'package:fooder_app/widgets/navigation_bar/navigation_bar_button.dart';

void main() {
  runApp(const App());
}

const List<Widget> screens = [
  HomeScreen(),
  ShopScreen(),
  SearchScreen(),
  UserScreen(),
];

int index = 0;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    AppBar appbar = _createHomeAppBar(size);
    if (index == 1) {
      appbar = _createShopAppBar();
    }
    if (index == 2) {
      appbar = _createSearchAppBar();
    }
    if (index == 3) {
      appbar = _createUserAppBar();
    }

    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar,
        bottomNavigationBar: _createBottomNavigationBar(),
        body: screens[index],
      ),
    );
  }

  Card _createBottomNavigationBar() {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        color: Colors.white,
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarButton(
              icon: Icons.home_outlined,
              iconColor: (index == 0) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            NavigationBarButton(
              icon: Icons.shopping_bag_outlined,
              iconColor: (index == 1) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
            ),
            NavigationBarButton(
              icon: Icons.search,
              iconColor: (index == 2) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            NavigationBarButton(
              icon: Icons.person_outline,
              iconColor: (index == 3) ? kPrimaryColor : kPrimaryTextColor,
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar _createHomeAppBar(Size size) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              print('Notification Button');
            },
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.notifications_outlined,
                color: kOnPrimaryColor,
              ),
            ),
          ),
        )
      ],
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        constraints: BoxConstraints(maxWidth: size.width * .6),
        decoration: BoxDecoration(
          color: kTertiaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Text(
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          'Madarbari, Uttarkhan, Dhaka',
          style: TextStyle(
            fontSize: 14,
            color: kSecondaryTextColor,
          ),
        ),
      ),
    );
  }

  AppBar _createShopAppBar() {
    return AppBar();
  }

  AppBar _createSearchAppBar() {
    return AppBar();
  }

  AppBar _createUserAppBar() {
    return AppBar();
  }
}
