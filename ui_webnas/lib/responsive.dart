import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive(
      {super.key,
      required this.title,
      required this.mobile,
      required this.tab,
      required this.desktop});

  final String title;
  final StatefulWidget mobile;
  final StatefulWidget tab;
  final StatefulWidget desktop;

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return widget.mobile;
          } else if (constraints.maxWidth > 600 &&
              constraints.maxWidth <= 1366) {
            return widget.tab;
          } else {
            return widget.desktop;
          }
        }),
      ),
    );
  }
}
