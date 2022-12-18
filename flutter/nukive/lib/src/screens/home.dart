import 'package:flutter/material.dart';
import 'package:nukive/src/widgets/logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.center;
  final CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // if (constraints.maxWidth > 600) {
          //   return const DesktopHomeScreen();
          // } else {
          //   return const MobileHomeScreen();
          // }

          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.black,
            alignment: Alignment.center,
            child: (constraints.maxWidth > 600)
                ? Row(
                    mainAxisAlignment: _mainAxisAlignment,
                    crossAxisAlignment: _crossAxisAlignment,
                    children: _buildChildrenWidgets(false),
                  )
                : Column(
                    mainAxisAlignment: _mainAxisAlignment,
                    crossAxisAlignment: _crossAxisAlignment,
                    children: _buildChildrenWidgets(true),
                  ),
          );
        },
      ),
    );
  }

  List<Widget> _buildChildrenWidgets(bool isMobile) {
    return [
      const Logo(),
      SizedBox(
        height: isMobile ? 20 : 0,
        width: isMobile ? 0 : 30,
      ),
      const Text(
        'by Arindam Karmakar',
        textAlign: TextAlign.center,
        textScaleFactor: 4.5,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ];
  }
}
