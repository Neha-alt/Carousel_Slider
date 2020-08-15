import 'package:flutter/material.dart';

class SmallCards extends StatelessWidget {
  final int no;
  const SmallCards({
    Key key, this.no,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          image: AssetImage('images/music$no.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}