import 'package:expert_dk/config/router_manager/app_router_files/app_routes/home_routes.dart';
import 'package:expert_dk/config/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'container.dart';

class EDKBasePageWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return SelectableRegion(
      focusNode: FocusNode(),
      selectionControls: desktopTextSelectionControls,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          bottom: PreferredSize(
              preferredSize: const Size(0, 1),
              child: Container(
                height: 1,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              )),
          title: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                context.go(EDKHomeRoute.home.fullPath);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Expert DK - procjene nekretnina",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
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
          actions: [
            ElevatedButton(
              onPressed: () {
                context.go(EDKHomeRoute.home.fullPath);
              },
              child: Text("Početna stranica"),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                context.go(EDKHomeRoute.kvalifikacije.fullPath);
              },
              child: Text("Kvalifikacije"),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                context.go(EDKHomeRoute.kontakt.fullPath);
              },
              child: Text("Kontakt"),
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                image,
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              SizedBox(
                width: double.infinity,
                child: EDKContainer.primaryContainer(
                  text: titleText,
                  textStyle: Theme.of(context).textTheme.headlineLarge!,
                  context: context,
                ),
              ),
              Center(
                child: child,
              ),
              _footerContainer(context),
            ],
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
