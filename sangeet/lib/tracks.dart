import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sangeet/songpage.dart';
import 'package:sangeet/widgets/song_tile.dart';

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
            expandedHeight: 150.0,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "SONGS",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      fontSize: 25,
                      color: Colors.white),
                ),
                background: Container(
                  decoration: BoxDecoration(color: Colors.grey[900]),
                )),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return SongTile(
                title: "Lost in paradise",
                artist: "ALI feat. AKLO",
                duration: "5:27",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SongPage()),
                  );
                });
          })),
        ],
      ),
    );
  }
}
