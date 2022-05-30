import 'package:just_audio/just_audio.dart';
import 'package:soapify/utils/music.dart';


final _audioPlayer = AudioPlayer();

play(bool isPlaying, int counter, {bool first = true}) {
  if (first){
    _audioPlayer.setAsset(MusicList[counter].urlSong);
  }
  if (isPlaying) {
    _audioPlayer.play();
  } else {
    _audioPlayer.pause();
  }
}