import 'package:expert_dk/screens/about/about.dart';
import 'package:expert_dk/screens/contacts/contacts.dart';
import 'package:expert_dk/screens/main/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common_router_files/element_routes.dart';
import '../app_route.dart';
import '../app_routes.dart';

enum EDKMainRoute with MainGRRouteSegment {
  main,
  about,
  contacts,
  ;

  @override
  String get path {
    switch (this) {
      case main:
      case about:
      case contacts:
        return name;
    }
  }

  @override
  String get localization {
    switch (this) {
      case main:
        return "Ekspert DK - procjene nekretnina";
      case about:
        return "O nama";
      case contacts:
        return "Kontakt podaci";
    }
  }

  @override
  List<EDKMainRoute> get subRoutes {
    switch (this) {
      case main:
        return [about, contacts];
      case about:
      case contacts:
        return [];
    }
  }

  List<MainGRRouteSegment> get rootRoutes => [
        main,
      ];

  String get goRoutePath => rootRoutes.contains(this) ? "/$path" : path;

  @override
  String get fullPath => getFullPath(EDKMainRoute.values);

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
          case main:
            return NoTransitionPage(
              child: Title(
                title: appAppRoutes.browserTitleFromFullPath(state.fullPath ?? appAppRoutes.rootPath) ?? '',
                color: Theme.of(context).primaryColor,
                child: const EDKMainWidget(),
              ),
            );
          case about:
            return NoTransitionPage(
              child: Title(
                title: appAppRoutes.browserTitleFromFullPath(state.fullPath ?? appAppRoutes.rootPath) ?? '',
                color: Theme.of(context).primaryColor,
                child: const EDKAboutWidget(),
              ),
            );
          case contacts:
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
