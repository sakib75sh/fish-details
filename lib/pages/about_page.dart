import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:two_app/route_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.go('${Routes.about}/${Routes.picture}');
              },
              child: const Text("picture"))
        ],
      ),
    );
  }
}
