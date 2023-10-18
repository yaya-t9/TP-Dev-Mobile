import 'package:flutter/material.dart';

class AppbarComponents extends StatefulWidget {

  final String title;

  const AppbarComponents({super.key, required this.title});

  @override
  State<AppbarComponents> createState() => _AppbarComponentsState();
}

class _AppbarComponentsState extends State<AppbarComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(widget.title)]);
  }
}