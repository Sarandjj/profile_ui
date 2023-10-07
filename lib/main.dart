import 'package:flutter/material.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:task2/ui/page/profile_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 215, 192, 255)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
