import 'package:expense_flutter_web/utils/app_colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) {
        return desktopContainer1();
      },
      mobile: (p0) {
        return mobileContainer1();
      },
    );
  }

  // ====================DESKTOP===========

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 20, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your \nExpenses to \nSave Money',
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                AppColors.primary,
                              ),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              )),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Try Free Demo',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '— Web, iOs and Android',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    illustration1,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  // ====================MOBILE===========

  Widget mobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 20, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  illustration1,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            style: TextStyle(
              fontSize: w! / 10,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Helps you to organize \nyour income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColors.primary,
                  ),
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  )),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              label: const Text(
                'Try Free Demo',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '— Web, iOs and Android',
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
