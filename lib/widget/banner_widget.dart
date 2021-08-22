import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset("images/test_movie_1.png").image,
                  fit: BoxFit.fill)),
        )
      ],
    );
  }
}
