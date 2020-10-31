import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
            expandedHeight: 400.0,
            flexibleSpace: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pinimg.com/originals/3a/f0/e5/3af0e55ea66ea69e35145fb108b4a636.jpg"),
                        radius: 100,
                        backgroundColor: Colors.amberAccent,
                      )
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(icon: Icon(EvaIcons.arrowCircleLeftOutline), onPressed: null),
                        SizedBox(width: 20,),
                        Text("Song name", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(width: 20,),
                        IconButton(icon: Icon(EvaIcons.arrowCircleRightOutline), onPressed: null),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.purple, height: 150.0),
              Container(color: Colors.green, height: 150.0),
            ]
          ))
        ],
      ),
    );
  }
}
