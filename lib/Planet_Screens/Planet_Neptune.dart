import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:orrery_app/Planet_Screens/Planet_Pluto.dart';
import 'package:orrery_app/Planet_Screens/Planet_Uranus.dart';

class Planet_Neptune extends StatelessWidget {
  const Planet_Neptune({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // التحية
            Text(
              'SPACED',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 10.h),
            // Text(
            //   'Hi Ariful,',
            //   style: TextStyle(
            //     color: Colors.white70,
            //     fontSize: 16.sp,
            //   ),
            // ),
            SizedBox(height: 10.h),
            Text(
              'Which planet\nwould you like to explore?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            // صورة الكوكب
            Expanded(
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/Planet_Neptune.png.png', // صورة الكوكب
                        width: 290.w,
                        height: 240.h,
                        fit: BoxFit.cover, // التأكد من تغطية المساحة بشكل جيد
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // اسم الكوكب والوصف
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // زر السهم الأيسر
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const Planet_Uranus()), // استدعاء HomeScreen
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  iconSize: 25.w, // حجم السهم
                ),
                // اسم الكوكب والوصف
                Column(
                  children: [
                    Text(
                      'Neptune',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'THE LIVING PLANET',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                // زر السهم الأيمن
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const Planet_Pluto()), // استدعاء HomeScreen
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                  iconSize: 25.w, // حجم السهم
                ),
              ],
            ),
            SizedBox(height: 60.h),
            // زر استكشاف الكوكب
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // فعل لاستكشاف الكوكب
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // لون الزر
                  padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Explore planet',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black, // لون النص داخل الزر
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // شريط التنقل السفلي
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // الخلفية السوداء للبار
        selectedItemColor: Colors.white, // اللون الأبيض عند التحديد
        unselectedItemColor: Colors.grey, // اللون الرمادي عند عدم التحديد
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // أيقونة البيت
            label: '',
          ), BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch), // أيقونة الصاروخ
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // أيقونة البحث
            label: '',
          ),

        ],
      ),
    );
  }
}
