import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smc/page-1/splash_screen_2.dart';
import 'package:smc/utils.dart';

import 'other/counsellor_details_provider.dart';
import 'other/dependency_injection.dart';
import 'other/user_booking_provider.dart';
// import 'package:smc/page-1/student-community-NJD.dart';
// import 'package:smc/page-1/courses.dart';
// import 'package:smc/page-1/detailed-cb.dart';
// import 'package:smc/page-1/detailed-feed.dart';
// import 'package:smc/page-1/news.dart';
// import 'package:smc/page-1/detailed-news.dart';
// import 'package:smc/page-1/detailed-vocational-courses.dart';
// import 'package:smc/page-1/detailed-counsellor.dart';
// import 'package:smc/page-1/detailed-webinar.dart';
// import 'package:smc/page-1/course-boosters.dart';
// import 'package:smc/page-1/entrance-prepration.dart';
// import 'package:smc/page-1/detailed-entrance-prepration.dart';
// import 'package:smc/page-1/splash-screen.dart';
// import 'package:smc/page-1/welcome-screen.dart';
// import 'package:smc/page-1/sign-up.dart';
// import 'package:smc/page-1/otp.dart';
// import 'package:smc/page-1/dob-new.dart';
// import 'package:smc/page-1/login.dart';
// import 'package:smc/page-1/homepagecontainer.dart';
// import 'package:smc/page-1/counsellor-select-new.dart';
// import 'package:smc/page-1/ep.dart';
// import 'package:smc/page-1/ep-zCq.dart';
// import 'package:smc/page-1/vocational-courses.dart';
// import 'package:smc/page-1/vocational-courses-rW5.dart';
// import 'package:smc/page-1/vocational-courses-W2V.dart';
// import 'package:smc/page-1/vocational-courses-1st-pge.dart';
// import 'package:smc/page-1/calender.dart';
// import 'package:smc/page-1/calender-grp.dart';
// import 'package:smc/page-1/calender-XQM.dart';
// import 'package:smc/page-1/calender-R7F.dart';
// import 'package:smc/page-1/accommodatino-search.dart';
// import 'package:smc/page-1/accommodatino-pg-.dart';
// import 'package:smc/page-1/accommodatino-hostel-.dart';
// import 'package:smc/page-1/conncet.dart';
// import 'package:smc/page-1/payment-screen-1.dart';
// import 'package:smc/page-1/community-fisrt.dart';
// import 'package:smc/page-1/flat-community.dart';
// import 'package:smc/page-1/flat-enquiry.dart';
// import 'package:smc/page-1/community-detailed.dart';
// import 'package:smc/page-1/webinar-detail-second-full-view.dart';
// import 'package:smc/page-1/counselor-detailed-full-view.dart';
// import 'package:smc/page-1/counselor-detailed-select-full-view.dart';
// import 'package:smc/page-1/save-profile-send-enquiry.dart';
// import 'package:smc/page-1/ep-detailed-full-view.dart';
// import 'package:smc/page-1/ep-detailed-pg-full-view.dart';
// import 'package:smc/page-1/pg-details-full-view.dart';
// import 'package:smc/page-1/ep-detailed-full-view-hW9.dart';
// import 'package:smc/page-1/counselor-dashboard-new-full-view.dart';
// import 'package:smc/page-1/student-dashboard-full-view.dart';
// import 'package:smc/page-1/counselor-full-view.dart';
// import 'package:smc/page-1/vocational-courses-full-view.dart';
// import 'package:smc/page-1/payment-screen-2.dart';
// import 'package:smc/page-1/payment-success.dart';
// import 'package:smc/page-1/payment-failed.dart';
// import 'package:smc/page-1/webinar-first.dart';
// import 'package:smc/page-1/webinar.dart';
// import 'package:smc/page-1/webinar-wmB.dart';
// import 'package:smc/page-1/career-booster.dart';
// import 'package:smc/page-1/explore-first-feed.dart';
// import 'package:smc/page-1/explore-detail-feed.dart';
// import 'package:smc/page-1/image-1.dart';
// import 'package:smc/page-1/rectangle-113.dart';
// import 'package:smc/page-1/rectangle-114.dart';
// import 'package:smc/page-1/image-2.dart';
// import 'package:smc/page-1/image-3.dart';
// import 'package:smc/page-1/image-4.dart';
// import 'package:smc/page-1/image-5.dart';
// import 'package:smc/page-1/image-6.dart';
// import 'package:smc/page-1/.dart';
// import 'package:smc/page-1/image-7.dart';
// import 'package:smc/page-1/group-92.dart';
// import 'package:smc/page-1/group-32.dart';
// import 'package:smc/page-1/whatsapp-image-2023-08-23-at-810-1.dart';
// import 'package:smc/page-1/vocational-course-offline-full-view.dart';
// import 'package:smc/page-1/share.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounsellorDetailsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserBookingProvider(),
        ),
      ],
      child: const smc(),
    ),
  );
  DependencyInjection.init();
}

class smc extends StatelessWidget {
  const smc({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const Scaffold(
          body: SplashScreen2(),
        ),
        builder: EasyLoading.init());
  }
}
