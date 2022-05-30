import 'package:flutter/material.dart';
import 'package:soapify/utils/music.dart';

class AudioPage extends StatefulWidget {
  AudioPage({Key? key}) : super(key: key);

  @override
  _AudioPageState createState() => _AudioPageState();
}
class _AudioPageState extends State<AudioPage> {
  int counter = 0;
  bool _isPlaying = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 28, 36),
        body : Center(
			  child : Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
        Container(child : Text(MusicList[counter].title, style : TextStyle(fontSize: 40, color: Colors.white)), margin: EdgeInsets.all(30),),
				Image.asset(
          MusicList[counter].imagePath,
          width: 300,
          height: 300,
          ),
        Row(
				  mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Padding(padding: const EdgeInsets.only(top : 20) ),
          IconButton(
            icon : const Icon( Icons.skip_previous,),
            iconSize: 45,
            color : Colors.white,
            onPressed: () {
              setState(() {
                if(counter > 0) {
                  counter--;
                }
              });
            },
            ),
          IconButton(
            icon : Icon(
              (_isPlaying) ? Icons.play_arrow : Icons.pause,
            ), 
            iconSize: 45,
            color : Colors.white,
            onPressed: () {
              setState(() {
                _isPlaying = !_isPlaying;
              });
            },
            ),
           IconButton(
            icon : const Icon( Icons.skip_next,),
            iconSize: 45,
            color : Colors.white,
            onPressed: () {
              setState(() {
                if(counter < MusicList.length - 1) {
                  counter++;
                }
              });
            },
            ),
        ],
        )
				]
			  ),
        )
    );
  }
}