import 'dart:math';

import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
  int leftImage = 1;
}

class _ImagePageState extends State<ImagePage> {
  int leftImage = 1;
  int rightImage =2;

  @override
  Widget build(BuildContext context) {
    String leftImagePath = "assets/images/image-$leftImage.png" ;
    String rightImagePath = "assets/images/image-$rightImage.png" ;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImagePath == rightImagePath? "مبروووك لقد كسبت" : "حاول مره اخرى",
          style:TextStyle(
              color: Colors.white,
              fontSize: 42
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                      child: Image.asset(leftImagePath),
                      onPressed: () {
                        setState(() {
                          leftImage = Random().nextInt(8)+1;
                          rightImage = Random().nextInt(8)+1;
                        });
                      }
                  )
              ),

              Expanded(
                child: TextButton(onPressed: () {
                  setState(() {
                    rightImage = Random().nextInt(8)+1;
                    leftImage = Random().nextInt(8)+1;
                  });
                },
                  child: Image.asset(rightImagePath),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
