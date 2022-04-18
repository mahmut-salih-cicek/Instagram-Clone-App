import 'package:flutter/material.dart';

import '../theme/colors.dart';

class StoryItem extends StatelessWidget {
  final String img;
  final String name;

  const StoryItem({

    required this.img,
    required this.name,
    Key? key

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: storyBorderColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 62,
                height: 62,
                decoration: BoxDecoration(
                  border: Border.all(color: black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      img,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            width: 70,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
