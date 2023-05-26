import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../domain/routes/router.dart';
import '../utils/theme.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final appRouter = AppRouter();
  
  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 792),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
          theme: basicThemeData(),
        );
      },
    );
  }
}