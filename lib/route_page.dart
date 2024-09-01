import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:two_app/pages/about_page.dart';
import 'package:two_app/pages/detail_page.dart';
import 'package:two_app/pages/home_page.dart';
import 'package:two_app/pages/page_holder.dart';
import 'package:two_app/pages/picture_page.dart';
import 'package:two_app/pages/profile_page.dart';

class Routes {
  static const home = "/";
  static const about = "/about";
  static const profile = "/profile";
  static const details = "/details/:id";

  //Nested routing

  static const picture = "picture";
}

class RoutePage {
  static final router = GoRouter(routes: [
    ShellRoute(
        builder: (context, state, child) => PageHolder(child: child),
        routes: [
          GoRoute(
            path: Routes.home,
            name: Routes.home,
            pageBuilder: (context, state) =>
                const MaterialPage(child: HomePage()),
          ),
          GoRoute(
            path: Routes.profile,
            name: Routes.profile,
            pageBuilder: (context, state) =>
                const MaterialPage(child: ProfilePage()),
          ),
          GoRoute(
            path: Routes.about,
            name: Routes.about,
            routes: [
              GoRoute(
                path: Routes.picture,
                name: Routes.picture,
                pageBuilder: (context, state) =>
                    const MaterialPage(child: PicturePage()),
              )
            ],
            pageBuilder: (context, state) =>
                const MaterialPage(child: AboutPage()),
          ),
          GoRoute(
            path: Routes.details,
            name: Routes.details,
            pageBuilder: (context, state) => MaterialPage(
                child: DetailPage(id: int.parse(state.pathParameters['id']!))),
          )
        ])
  ]);
}
