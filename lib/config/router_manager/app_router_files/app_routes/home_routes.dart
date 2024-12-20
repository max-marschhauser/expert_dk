import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../screens/about_screen/about_widget.dart';
import '../../../../screens/contacts_screen/contacts_widget.dart';
import '../../../../screens/home_screen/home_widget.dart';
import '../../common_router_files/element_routes.dart';
import '../app_route.dart';
import '../app_routes.dart';

enum EDKHomeRoute with MainGRRouteSegment {
  home,
  kvalifikacije,
  kontakt,
  ;

  @override
  String get path {
    switch (this) {
      case home:
      case kvalifikacije:
      case kontakt:
        return name;
    }
  }

  @override
  String get localization {
    switch (this) {
      case home:
        return "EXPERT DK - procjene nekretnina";
      case kvalifikacije:
        return "Kvalifikacije";
      case kontakt:
        return "Kontakt";
    }
  }

  @override
  List<EDKHomeRoute> get subRoutes {
    switch (this) {
      case home:
        return [kvalifikacije, kontakt];
      case kvalifikacije:
      case kontakt:
        return [];
    }
  }

  List<MainGRRouteSegment> get rootRoutes => [
        home,
      ];

  String get goRoutePath => rootRoutes.contains(this) ? "/$path" : path;

  @override
  String get fullPath => getFullPath(EDKHomeRoute.values);

  APPRoute get erRoute => APPRoute(
        displayName: localization,
        fullPath: fullPath,
        segment: path,
      );

  @override
  GoRoute get goRoute {
    return GoRoute(
      path: goRoutePath,
      pageBuilder: (context, state) {
        switch (this) {
          case home:
            return NoTransitionPage(
              child: Title(
                title: appAppRoutes.browserTitleFromFullPath(state.fullPath ?? appAppRoutes.rootPath) ?? '',
                color: Theme.of(context).primaryColor,
                child: const EDKMainWidget(),
              ),
            );
          case kvalifikacije:
            return NoTransitionPage(
              child: Title(
                title: appAppRoutes.browserTitleFromFullPath(state.fullPath ?? appAppRoutes.rootPath) ?? '',
                color: Theme.of(context).primaryColor,
                child: const EDKAboutWidget(),
              ),
            );
          case kontakt:
            return NoTransitionPage(
              child: Title(
                title: appAppRoutes.browserTitleFromFullPath(state.fullPath ?? appAppRoutes.rootPath) ?? '',
                color: Theme.of(context).primaryColor,
                child: const EDKContactsWidget(),
              ),
            );
        }
      },
      routes: subRoutes.map((e) => e.goRoute).toList(),
    );
  }
}
