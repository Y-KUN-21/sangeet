import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:get/get.dart';
import 'package:sangeet/songpage.dart';
import 'package:sangeet/widgets/song_tile.dart';

import 'controllers/songsController.dart';

class Tracks extends StatefulWidget {
  @override
  _TracksState createState() => _TracksState();
}

class _TracksState extends State<Tracks> {
  final SongsController songsController = Get.put(SongsController());
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: songsController.getSongs(),
        builder: (context, snapshot) {
          List<SongInfo> songInfo = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
              break;
            default:
              if (snapshot.hasData) {
                return Scaffold(
                  body: NestedScrollView(
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) {
                        return <Widget>[
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
                                  decoration:
                                      BoxDecoration(color: Colors.grey[900]),
                                )),
                          ),
                        ];
                      },
                      body: ListView.builder(
                          itemCount: songInfo.length,
                          itemBuilder: (context, index) {
                            var songs = songInfo[index];
                            return SongTile(
                                title: songs.title.toString() ?? "Unknown",
                                artist: songs.artist.toString(),
                                duration: songs.duration,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SongPage(
                                              title: songs.title,
                                              album: songs.album,
                                              artist: songs.artist,
                                              url: songs.albumArtwork,
                                            )),
                                  );
                                });
                          })),
                );
              }
          }
          if (snapshot.hasData == null) {
            return Center(
              child: Text("Unexpected error \n"
                  "Please make sure you have given permission to access storage"),
            );
          }
          return Container();
        });
  }
}
