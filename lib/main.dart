import 'package:catlog_app/pages/home_page.dart';
import 'package:catlog_app/pages/log_in_page.dart';
import 'package:catlog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: myroutes.loginpage,
      routes: {
        myroutes.loginpage: (context) => log_in_page(),
        myroutes.homepage: (context) => home_page(),
      },
    );
  }
}
