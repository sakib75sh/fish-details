import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:two_app/route_page.dart';

class PageHolder extends StatefulWidget {
  const PageHolder({super.key, required this.child});
  final Widget child;

  @override
  State<PageHolder> createState() => _PageHolderState();
}

class _PageHolderState extends State<PageHolder> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
          selectedIndex: activeIndex,
          onDestinationSelected: (index) {
            setState(() {
              activeIndex = index;
            });
            switch (index) {
              case 0:
                context.goNamed(Routes.home);
                break;
              case 1:
                context.goNamed(Routes.about);
                break;
              case 2:
                context.goNamed(Routes.profile);
                break;
              default:
                context.goNamed(Routes.home);
            }
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.info_outline), label: ''),
            NavigationDestination(
                icon: Icon(Icons.person_4_outlined), label: '')
          ]),
    );
  }
}
