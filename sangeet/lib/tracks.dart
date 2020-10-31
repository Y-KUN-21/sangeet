import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tracks extends StatefulWidget {
  @override
  _TracksState createState() => _TracksState();
}

class _TracksState extends State<Tracks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                      Text("Song name"),
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
                    ],
                  ),
                  Text("Now playing"),
                  CircleAvatar(
                    child: Image.network("https://i.pinimg.com/originals/3a/f0/e5/3af0e55ea66ea69e35145fb108b4a636.jpg",
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
