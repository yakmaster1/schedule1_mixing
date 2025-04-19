import 'dart:io';

import 'package:flutter/material.dart';
import 'package:schedule_calculator/colors.dart';
import 'package:schedule_calculator/mixing_page.dart';
import 'package:schedule_calculator/product_page.dart';
import 'package:window_size/window_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    const Size windowSize = Size(1280, 720);
    setWindowMinSize(windowSize);
    setWindowMaxSize(windowSize);
    setWindowFrame(Rect.fromLTWH(0, 0, windowSize.width, windowSize.height));
    setWindowTitle("Schedule I Mixing helper");
  }

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isOnFirstPage = true;
  late final ScrollController scrollController;
  
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

void switchPages() {
  scrollController.animateTo(
    isOnFirstPage ? 1280 : 0,
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeInOutCubic,
  );
  setState(() {
    isOnFirstPage = !isOnFirstPage;
  });
}

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColors.darkGray,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                height: screenSize.height,
                width: screenSize.width,
                child: ProductPage(
                  switchPages: switchPages,
                ),
              ),
              SizedBox(
                height: screenSize.height,
                width: screenSize.width,
                child: MixingPage(
                  switchPages: switchPages,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
