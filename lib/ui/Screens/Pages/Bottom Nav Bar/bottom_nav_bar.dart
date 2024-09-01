import 'package:ecommerce_deltana2/ui/Screens/Tabs/Category%20Tab/category_tab.dart';
import 'package:ecommerce_deltana2/ui/Screens/Tabs/Home%20Tab/home_tab.dart';
import 'package:ecommerce_deltana2/ui/Screens/Tabs/Menu%20Tab/menu_tab.dart';
import 'package:ecommerce_deltana2/ui/Screens/Tabs/Settings%20tab/settings_tab.dart';
import 'package:ecommerce_deltana2/utls/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
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
                              color: const Color(ColorsConstant.mainColor),
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 40,
                            AssetImage("assets/images/home.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 40,
                          AssetImage("assets/images/home.png"),
                          color: Colors.black,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 1
                      ? Container(
                          decoration: BoxDecoration(
                              color: const Color(ColorsConstant.mainColor),
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 40,
                            AssetImage("assets/images/catt.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 40,
                          AssetImage("assets/images/catt.png"),
                          color: Colors.black,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 2
                      ? Container(
                          decoration: BoxDecoration(
                              color: const Color(ColorsConstant.mainColor),
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 40,
                            AssetImage("assets/images/menu.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 40,
                          AssetImage("assets/images/menu.png"),
                          color: Colors.black,
                        ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: selectedIndexItem == 3
                      ? Container(
                          decoration: BoxDecoration(
                              color: const Color(ColorsConstant.mainColor),
                              borderRadius: BorderRadius.circular(90)),
                          child: const ImageIcon(
                            size: 40,
                            AssetImage("assets/images/setting.png"),
                            color: Colors.white,
                          ),
                        )
                      : const ImageIcon(
                          size: 40,
                          AssetImage("assets/images/setting.png"),
                          color: Colors.black,
                        ),
                  label: ''),
            ],
          ),
        ));
  }
}
