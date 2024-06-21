import 'package:expert_dk/config/router_manager/app_router_files/app_routes/home_routes.dart';
import 'package:expert_dk/config/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'container.dart';

class EDKBasePageWidget extends StatefulWidget {
  final Widget child;
  final String image;
  final String titleText;

  const EDKBasePageWidget({
    required this.titleText,
    required this.child,
    required this.image,
    super.key,
  });

  @override
  State<EDKBasePageWidget> createState() => _EDKBasePageWidgetState();
}

class _EDKBasePageWidgetState extends State<EDKBasePageWidget> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 1100) {
      _showMenu = false;
      setState(() {});
    }

    return SelectableRegion(
      focusNode: FocusNode(),
      selectionControls: desktopTextSelectionControls,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              bottom: PreferredSize(
                preferredSize: const Size(0, 1),
                child: Container(
                  height: 1,
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                ),
              ),
              centerTitle: false,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "EXPERT DK - procjene nekretnina",
                  style: screenWidth > 1000 ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              leading: InkWell(
                hoverColor: Theme.of(context).colorScheme.secondary,
                splashColor: Theme.of(context).colorScheme.primary,
                hoverDuration: const Duration(milliseconds: 250),
                onTap: () {
                  context.go(EDKHomeRoute.home.fullPath);
                },
                child: Container(
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    EDKImages.shared.logo,
                  ),
                ),
              ),
              actions: screenWidth < 1100
                  ? [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            _showMenu = !_showMenu;
                            setState(() {});
                          },
                          child: Container(
                            color: Colors.transparent,
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Icon(
                              _showMenu ? Icons.close : Icons.menu,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                      )
                    ]
                  : [
                      _menuItem(
                          isTabBar: true,
                          text: "Početna stranica",
                          function: () {
                            context.go(EDKHomeRoute.home.fullPath);
                          }),
                      const SizedBox(width: 20),
                      _menuItem(
                          isTabBar: true,
                          text: "Kvalifikacije",
                          function: () {
                            context.go(EDKHomeRoute.kvalifikacije.fullPath);
                          }),
                      const SizedBox(width: 20),
                      _menuItem(
                        isTabBar: true,
                        text: "Kontakt",
                        function: () {
                          context.go(EDKHomeRoute.kontakt.fullPath);
                        },
                      ),
                    ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    widget.image,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: EDKContainer.primaryContainer(
                      text: widget.titleText,
                      textStyle: Theme.of(context).textTheme.headlineLarge!,
                      context: context,
                    ),
                  ),
                  Center(
                    child: widget.child,
                  ),
                  _footerContainer(context),
                ],
              ),
            ),
          ),
          Positioned(
            top: 57,
            right: 0,
            child: Container(
              color: Colors.white,
              width: 200,
              height: _showMenu ? 135 : 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _menuItem(
                      isTabBar: false,
                      text: "Početna stranica",
                      function: () {
                        context.go(EDKHomeRoute.home.fullPath);
                      }),
                  _menuItem(
                      isTabBar: false,
                      text: "Kvalifikacije",
                      function: () {
                        context.go(EDKHomeRoute.kvalifikacije.fullPath);
                      }),
                  _menuItem(
                      isTabBar: false,
                      text: "Kontakt",
                      function: () {
                        context.go(EDKHomeRoute.kontakt.fullPath);
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _menuItem({required bool isTabBar, required String text, required Function function}) {
    return Material(
      child: InkWell(
        hoverColor: Theme.of(context).colorScheme.secondary,
        splashColor: Theme.of(context).colorScheme.primary,
        hoverDuration: const Duration(milliseconds: 250),
        onTap: () {
          function();
          _showMenu = false;
          setState(() {});
        },
        child: Container(
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary.withOpacity(0.5), border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.primary))),
          width: isTabBar ? 200 : double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
            textAlign: isTabBar ? TextAlign.center : TextAlign.end,
          ),
        ),
      ),
    );
  }

  Widget _footerContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Text(
        "EXPERT DK obrt za tehničko savjetovanje, vl. Dražen Krajlah, Učka 1, 31000 Osijek",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
