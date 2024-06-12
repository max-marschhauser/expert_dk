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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16),
                Image.asset(
                  EDKImages.shared.logo,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 16),
                const Text("Expert DK - procjene nekretnina"),
                const SizedBox(width: 16),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.go(EDKMainRoute.main.fullPath);
                  },
                  child: Text("home"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.go(EDKMainRoute.about.fullPath);
                  },
                  child: Text("about"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.go(EDKMainRoute.contacts.fullPath);
                  },
                  child: Text("contacts"),
                ),
              ],
            ),
          ),
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
