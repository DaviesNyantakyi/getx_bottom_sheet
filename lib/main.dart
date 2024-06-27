import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.light_mode),
                    title: const Text('Light mode'),
                    onTap: () {
                      Get.changeThemeMode(ThemeMode.light);
                      Get.back();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.dark_mode),
                    title: const Text('Dark mode'),
                    onTap: () {
                      Get.changeThemeMode(ThemeMode.dark);
                      Get.back();
                    },
                  )
                ],
              ),
              backgroundColor: Colors.white,
            );
          },
          child: const Text('Change theme'),
        ),
      ),
    );
  }
}
