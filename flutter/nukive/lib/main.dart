import 'package:flutter/material.dart';
import 'package:nukive/src/screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NuKive());
}

class NuKive extends StatefulWidget {
  const NuKive({super.key});

  @override
  State<NuKive> createState() => _NuKiveState();
}

class _NuKiveState extends State<NuKive> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nuKive',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: "Passions_Conflict",
      ),
      home: const HomeScreen(),
    );
  }
}
