import 'package:flutter/material.dart';

class Image1Components extends StatefulWidget {
  const Image1Components({super.key});

  @override
  State<Image1Components> createState() => _Image1ComponentsState();
}

class _Image1ComponentsState extends State<Image1Components> {
  int _selectedButton = 1; // Par défaut, le bouton 1 est sélectionné.

  void _changeImages(int buttonNumber) {
    setState(() {
      _selectedButton = buttonNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bouton sélectionné : $_selectedButton',
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 1; i <= 9; i++)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextButton(
                    onPressed: () => _changeImages(i),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      backgroundColor: i == _selectedButton
                          ? const Color.fromARGB(255, 28, 255, 0)
                          : Colors.grey, // Changement de couleur pour le bouton sélectionné
                    ),
                    child: Text(i.toString(), style: TextStyle(fontSize: 40)),
                  ),
                
                ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.network(
              "https://url_de_l_image_$_selectedButton", // Utilise le numéro du bouton sélectionné pour l'URL de l'image
              width: 200, // Ajustez la taille de l'image comme vous le souhaitez
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Image1Components(),
    ),
  ));
}
