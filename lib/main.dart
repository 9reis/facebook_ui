import 'package:device_preview/device_preview.dart';
import 'package:facebook_ui/facebook_ui/facebook_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'facebook_ui/widgets/aspect_ratio.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
      // Executa O DevicePreview apenas no modo Debug
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const FacebookUi(),
    );
  }
}
