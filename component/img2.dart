import 'package:flutter/material.dart';


class Image2Components extends StatefulWidget {
  const Image2Components({super.key, required this.number});

  final String number;

  @override
  State<Image2Components> createState() => _Image2ComponentsState();
}

class _Image2ComponentsState extends State<Image2Components> {
  List<String> images =[
    "/resources/v2.80.0-5429/i/icons/android-icon-192x192.png"
    'https://images4.alphacoders.com/978/thumb-1920-978936.jpg',
    'https://i.pinimg.com/originals/fc/8e/53/fc8e537e831d77dbb4a2f210e0dd674f.jpg',
    'https://vss.astrocenter.fr/pictures/25296486-fauzan-saari-687562-unsplash.jpg',
    'https://s2.static-footeo.com/1200/uploads/lesenfantsdeguer/gallery/imgp08392__75io27rio.jpg',
    'https://th.bing.com/th/id/R.ac7ede6af528aed5c96ab1deb5cdbdcc?rik=AWayANjsYrQ2TQ&riu=http%3a%2f%2f3.bp.blogspot.com%2f-mN1qrxd0lcA%2fU7V5mzDhppI%2fAAAAAAAAC-A%2fRPl6pycifxE%2fs400%2fsoccer_18.gif&ehk=HKkhcSoXdeVqHmrmMBQnQc8OA0HqynKpJTb%2bDSfk9Jo%3d&risl=1&pid=ImgRaw&r=0',
    'https://1.bp.blogspot.com/-w36Xvt_sNTo/XKoA6_j9YWI/AAAAAAAAAlE/7jcfLlTmuOwtQNxvqiRYVw-UnwZiFT59wCLcBGAs/s1600/2019_04_07_14_14_04.png',
    'https://th.bing.com/th?id=OIF.q6zi58Ehdrrb032aL%2fMTnw&pid=ImgDet&rs=1',
    'https://images4.alphacoders.com/978/thumb-1920-978936.jpg',
    'https://vss.astrocenter.fr/pictures/25296486-fauzan-saari-687562-unsplash.jpg',
    'https://vss.astrocenter.fr/pictures/25296486-fauzan-saari-687562-unsplash.jpg',
  ];
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
        Image.network(images[int.parse(widget.number)])
    );
  }
}