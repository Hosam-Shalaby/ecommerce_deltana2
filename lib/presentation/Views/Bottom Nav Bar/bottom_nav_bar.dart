import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Tabs/Category Tab/category_tab.dart';
import '../Tabs/Home Tab/home_tab.dart';
import '../Tabs/Menu Tab/menu_tab.dart';
import '../Tabs/Settings tab/settings_tab.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  static const String routeName = 'BottomNavBar';

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndexItem = 0;
  List tabs = [
    const HomeTab(),
    const CategoryTab(),
    const ProductsTab(),
    const SettengsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.amber,
        body: tabs[selectedIndexItem],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: selectedIndexItem,
            onTap: (value) {
              setState(() {
                selectedIndexItem = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 0
                      ? Container(
                          decoration: BoxDecoration(
                              color: ColorsConstant.mainColor,
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 54,
                            AssetImage("assets/images/home.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 54,
                          AssetImage("assets/images/home.png"),
                          color: Colors.black,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 1
                      ? Container(
                          decoration: BoxDecoration(
                              color: ColorsConstant.mainColor,
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 54,
                            AssetImage("assets/images/cat.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 54,
                          AssetImage("assets/images/cat.png"),
                          color: Colors.black,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 2
                      ? Container(
                          decoration: BoxDecoration(
                              color: ColorsConstant.mainColor,
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 54,
                            AssetImage("assets/images/menu.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 54,
                          AssetImage("assets/images/menu.png"),
                          color: Colors.black,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 3
                      ? Container(
                          decoration: BoxDecoration(
                              color: ColorsConstant.mainColor,
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 54,
                            AssetImage("assets/images/settt.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 54,
                          AssetImage("assets/images/settt.png"),
                          color: Colors.black,
                        ),
                  label: ''),
            ],
          ),
        ));
  }
}
