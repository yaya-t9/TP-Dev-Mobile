import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/bar.dart';
import 'package:flutter_application_2/component/img1.dart';
import 'package:flutter_application_2/component/img2.dart';


class BodyComponents extends StatefulWidget {
  final String title;

  const BodyComponents({super.key, required this.title});

  @override
  State<BodyComponents> createState() => _BodyComponentsState();
}

class _BodyComponentsState extends State<BodyComponents> {

  String imageNumber = '0';
  bool _change = false;

  void _changeImages()
  {
    setState(() {
      _change = !_change;
    });
  }
   void _number(String n) {
    setState(() {
      imageNumber = n;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 56, 121, 251),
        title: AppbarComponents(title:widget.title),
      ),
      body:

        Column(mainAxisAlignment: MainAxisAlignment.center, children: [ 
          _change == false ? Text(imageNumber):Container(),
          _change == false ? Image1Components(getStringFromBody:_number,) : Image2Components(number:imageNumber),
          const Spacer(

          ),

        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: TextButton(
            onPressed: _changeImages,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 16.0),
                backgroundColor: Color.fromRGBO(126, 255, 120, 120)),
            child: const Text("Entrer", style: TextStyle(fontSize: 40, color: Color.fromRGBO(0, 0, 0, 1))),
          ),
        ),
      ],)
    );
  }
}