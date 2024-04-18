import 'package:expense_flutter_web/utils/app_colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileNavBar();
      },
      desktop: (p0) {
        return desktopNavBar();
      },
    );
  }
  // ====================MOBILE===========

  Widget mobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  // ====================DESKTOP===========

  Widget desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton(text: 'Features'),
              navButton(text: 'About us'),
              navButton(text: 'Pricing'),
              navButton(text: 'Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton({required String text}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            logo,
          ),
        ),
      ),
    );
  }
}
