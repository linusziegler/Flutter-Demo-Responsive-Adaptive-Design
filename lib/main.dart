import 'package:flutter/material.dart';
import 'package:responsive_adaptive_demo/responsive_layouts.dart';
import 'basic_widgets.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

bool get isMobileDevice => !kIsWeb && (Platform.isIOS || Platform.isAndroid);
bool get isDesktopDevice => !kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);
bool get isMobileDeviceOrWeb => kIsWeb || isMobileDevice;
bool get isDesktopDeviceOrWeb => kIsWeb || isDesktopDevice;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Responsive / Adaptive Widgets Demo'),
            ),
            body: ListView(
              children: const [
                BasicTitle(content: "Widgets with fixed Size"),
                Row(children: [
                  SizedBox(width: 10),
                  BasicWidget(),
                  SizedBox(width: 10),
                  BasicWidget(),
                  SizedBox(width: 10),
                  BasicWidget(),
                  SizedBox(width: 10),
                ]),
                BasicTitle(content: "Expanding Widgets"),
                Row(children: [
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                ]),
                BasicTitle(content: "Combine Fixed & Expanding Widgets"),
                Row(children: [
                  SizedBox(width: 10),
                  BasicWidget(),
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                ]),
                BasicTitle(content: "Expanding Widgets with Flex"),
                Row(children: [
                  SizedBox(width: 10),
                  ExpandingWidget(flexVal: 2), // <- !!
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                  ExpandingWidget(),
                  SizedBox(width: 10),
                ]),
                BasicTitle(
                    content: "Expanding Widgets with fixed Aspect Ratio"),
                Row(children: [
                  SizedBox(width: 10),
                  ExpandingFixedAspectWidget(),
                  SizedBox(width: 10),
                  ExpandingFixedAspectWidget(),
                  SizedBox(width: 10),
                  ExpandingFixedAspectWidget(),
                  SizedBox(width: 10),
                ]),
                BasicTitle(content: "Responsive Scaling using Media Query"),
                ResponsiveShape(),
                BasicTitle(content: "Adaptive Widgets"),
                Column(
                  children: [
                  SizedBox(height: 10),
                  Switch.adaptive(value: true, onChanged: null),
                  SizedBox(height: 10),
                  Slider.adaptive(value: 0.5, onChanged: null),
                  SizedBox(height: 10),
                  Checkbox.adaptive(value: true, onChanged: null),
                  SizedBox(height: 10),
                  Radio.adaptive(value: false, groupValue: false, onChanged: null),
                  SizedBox(height: 10),
                ]),          
                BasicTitle(content: "Adaptive Layout using Layoutbuilder"),
                ResponsiveLayout(
                      mobileLayout: MobileLayout(),
                      tabletLayout: TabletLayout(),
                      desktopLayout: DesktopLayout()
                      ),
              ],
            )));
  }
}
