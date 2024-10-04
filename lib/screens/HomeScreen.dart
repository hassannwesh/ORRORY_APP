import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orrery_app/Planet_Screens/Planet_Mercury.dart';

class Home_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              child: Image.asset(
                'assets/home.png.png', // صورة الكوكب
                width: 290.w,
                height: 240.h,
                fit: BoxFit.cover, // التأكد من تغطية المساحة بشكل جيد
              ),
            ),
            SizedBox(height: 20.h),
            // النص الرئيسي
            Text(
              'SPACE',
              style: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 10.h),
            // النص الفرعي
            Text(
              'Knowledge',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 40.h),
            // الزر
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Planet_Mercury()), // استدعاء HomeScreen
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Go menu',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(width: 10.w),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
