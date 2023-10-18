import 'package:flutter/material.dart';

class Image1Components extends StatefulWidget {
  final Function(String) getStringFromBody;
  const Image1Components({super.key, required this.getStringFromBody});

  @override
  State<Image1Components> createState() => _Image1ComponentsState();
}

class _Image1ComponentsState extends State<Image1Components> {

   
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children:[
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(126, 255, 120, 120)
                    ),
                    onPressed: (){widget.getStringFromBody("1");}, child: const Text("1", style: TextStyle(fontSize: 30))),
                     SizedBox(width: 20,),
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126, 255, 120, 120)
                    ),
                    onPressed: (){widget.getStringFromBody("2");}, child: const Text("2", style: TextStyle(fontSize: 30))),
                     SizedBox(width: 20,),
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126,255,120,120)
                    ),
                    onPressed: (){widget.getStringFromBody("3");}, child: const Text("3", style: TextStyle(fontSize: 30)))
            ],),
             SizedBox(width: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(126, 255, 120, 120)
                    ),
                    onPressed: (){widget.getStringFromBody("4");}, child: const Text("4", style: TextStyle(fontSize: 30))),
                     SizedBox(width: 20,),
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126,255,120,120)
                    ),
                    onPressed: (){widget.getStringFromBody("5");}, child: const Text("5", style: TextStyle(fontSize: 30))),
                     SizedBox(width: 20,),
              TextButton(
                style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(126, 255, 120, 120)
                    ),
                    onPressed: (){widget.getStringFromBody("6");}, child: const Text("6", style: TextStyle(fontSize: 30)))
            ],),
             SizedBox(width: 20,),
            
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126,255,120,120)
                    ),
                    onPressed: (){widget.getStringFromBody("7");}, child: const Text("7", style: TextStyle(fontSize: 30))),
                    SizedBox(width: 20,),
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126,255,120,120)
                    ),
                    onPressed: (){widget.getStringFromBody("8");}, child: const Text("8", style: TextStyle(fontSize: 30))),
                     SizedBox(width: 20,),
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126,255,120,120)
                    ),
                    onPressed: (){widget.getStringFromBody("9");}, child: const Text("9", style: TextStyle(fontSize: 30))),
                  
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(126,255,120,120)
                    ),
                    onPressed: (){widget.getStringFromBody("0");}, child: const Text("0", style: TextStyle(fontSize: 30)))
            ],),
          ]
      ),

    );
  }
}