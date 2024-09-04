import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(31, 95, 95, 95),
          borderRadius: BorderRadius.circular(10)),
      height: 45.h,
      width: 400.w,
      child: TextFormField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: ' Search Anything',
          hintStyle: TextStyle(
            color: Colors.black26,
            fontWeight: FontWeight.normal,
            fontSize: 17.sp,
          ),
          prefixIcon: const Icon(Icons.search, color: Colors.black),
        ),
      ),
    );
  }
}
