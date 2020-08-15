import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final String type;
  const MusicCard({
    Key key, this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          image: AssetImage('images/'+type+'music.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}