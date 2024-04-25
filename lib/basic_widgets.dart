import 'package:flutter/material.dart';

class BasicTitle extends StatelessWidget {
  final String content;

  const BasicTitle({
    super.key,
    required this.content,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        content,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
    );
  }
}

class BasicWidget extends StatelessWidget {
  final Color bgColor;
  final String widgetName;
  const BasicWidget(
      {super.key,
      this.bgColor = Colors.blueAccent,
      this.widgetName = "Widget w/ fixed Size"});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 400,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(child: Text(widgetName)),
        ));
  }
}

class ExpandingWidget extends StatelessWidget {
  final Color bgColor;
  final String widgetName;
  final int flexVal;
  const ExpandingWidget(
      {super.key,
      this.bgColor = Colors.deepOrange,
      this.widgetName = "Expanding Widget",
      this.flexVal = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flexVal,  
        child: BasicWidget(bgColor: bgColor, widgetName: widgetName));
  }
}

class ExpandingFixedAspectWidget extends StatelessWidget {
  final Color bgColor;
  final String widgetName;
  const ExpandingFixedAspectWidget(
      {super.key,
      this.bgColor = Colors.yellow,
      this.widgetName = "Expanding Widget w/ fixed Aspect Ratio"});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
          aspectRatio: 1.0,
          child: BasicWidget(
            bgColor: bgColor,
            widgetName: widgetName,
          )),
    );
  }
}

class ResponsiveShape extends StatelessWidget {
  const ResponsiveShape({super.key});

@override
  Widget build(BuildContext context) {
    // query width of Viewport (Context)
    final viewPortWidth = MediaQuery.of(context).size.width;
    // Circle Diameter should be 50 % of Viewport Width
    final dia = viewPortWidth * 0.5;
    return Center(
      child: Container(
        width: dia,
        height: dia,
        decoration: const BoxDecoration(
          color: Colors.blue, // Circle color
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
