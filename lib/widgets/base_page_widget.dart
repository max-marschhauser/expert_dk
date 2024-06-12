import 'package:expert_dk/config/router_manager/app_router_files/app_routes/main_routes.dart';
import 'package:expert_dk/config/styles/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EDKBasePageWidget extends StatelessWidget {
  final Widget child;
  final String image;

  const EDKBasePageWidget({required this.child, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Expert DK - procjene nekretnina",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset(
            EDKImages.shared.logo,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              context.go(EDKMainRoute.main.fullPath);
            },
            child: Text("home"),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              context.go(EDKMainRoute.about.fullPath);
            },
            child: Text("about"),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              context.go(EDKMainRoute.contacts.fullPath);
            },
            child: Text("contacts"),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            image,
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
