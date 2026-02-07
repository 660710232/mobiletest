import 'package:flutter/material.dart';

class LikeCard extends StatefulWidget {
  const LikeCard({super.key});

  @override
  State<LikeCard> createState() => _LikeCardState();
}

class _LikeCardState extends State<LikeCard> {
  bool isLiked = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[100],
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        children: [
          // Text(isLiked ? "Liked" : "Dislike"),
          // IconButton(
          //   onPressed: () {
          //     setState(() {
          //       isLiked = !isLiked;
          //     });
          //   },
          //   icon: Icon(isLiked ? Icons.thumb_up : Icons.thumb_down),
          // ),
          Text('Counter Value:'),
          Text('$count' , style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Text('Decrement'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                child: Text('Reset'),
              ),
            ]
          )
        ],
      ),
    );
  }
}
