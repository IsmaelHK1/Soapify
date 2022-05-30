class Music {
  String title ='';
  String singer ='';
  String imagePath ='';
  String urlSong ='';
}

//constructor
createMusic(String title, String singer, String imagePath, String urlSong) {
  Music music = new Music();
  music.title = title;
  music.singer = singer;
  music.imagePath = imagePath;
  music.urlSong = urlSong;
  MusicList.add(music);
}
addMusic(){
  createMusic('Nyan Cat', 'AI', 'lib/assets/img/nyancat.jpg', 'assets/song/nyan_cat_original.mp3');
  createMusic('Petit Déjeuner', 'MisterV', 'lib/assets/img/misterV_Album.jpg', 'assets/song/petit_dejeuner.mp3');
  createMusic( 'Cabeza', 'Oboy', 'lib/assets/img/oboy_album.jpg', 'assets/song/cabeza.mp3');
}

List<Music> MusicList = [];
