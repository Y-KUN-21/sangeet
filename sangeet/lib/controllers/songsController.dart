import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:get/get.dart';

class SongsController extends GetxController{
  final FlutterAudioQuery audioQuery = FlutterAudioQuery();
  Future getSongs() async {
    List<SongInfo> songs = await audioQuery.getSongs();
    return songs;
  }
}