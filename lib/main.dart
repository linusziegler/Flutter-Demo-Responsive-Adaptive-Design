import 'package:flutter/material.dart';
import 'package:responsive_adaptive_demo/responsive_layouts.dart';
import 'basic_widgets.dart';

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
              title: const Text('Responsive Widgets Demo'),
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
                BasicTitle(content: "Dynamic Layout using Layoutbuilder"),
                ResponsiveLayout(
                      mobileLayout: MobileLayout(),
                      tabletLayout: TabletLayout(),
                      desktopLayout: DesktopLayout()
                      ),
              ],
            )));
  }
}
