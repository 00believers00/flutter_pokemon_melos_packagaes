import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ibmPlexSansThaiTextTheme(textTheme),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    
      builder: (BuildContext context, Widget? widget) {
        ScreenUtil.init(
          context,
          designSize: const Size(375, 812),
        );
        return MediaQuery(
          data: const MediaQueryData(
            textScaler: TextScaler.linear(1.0),
          ),
          child: SafeArea(
            child: widget ?? Container(),
          ),
        );
      },
    );
  }
}
