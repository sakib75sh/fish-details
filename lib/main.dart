import 'package:flutter/material.dart';
// import 'package:two_app/pages/home_page.dart';

import 'package:two_app/route_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HomePage(),
    // );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RoutePage.router,
    );
  }
}
