import 'package:aub/Widgets/Cover2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  final String id;

  VideoScreen(this.id);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen>
    with TickerProviderStateMixin {
  YoutubePlayerController _controller;
  var playPause = Icons.pause;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.select):
            const Intent(ActivateAction.key)
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 35, 40, 50),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    onReady: () {
                      print('Player is ready.');
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RawMaterialButton(
                      focusColor: Colors.grey,
                      onPressed: () {
                        setState(() {
                          var position = _controller.value.position.inSeconds;
                          _controller.seekTo(Duration(seconds: position - 10));
                        });
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Icon(
                        Icons.fast_rewind,
                        size: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.01,
                      ),
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
//                        // If the video is playing, pause it.
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                            playPause = Icons.play_arrow;
                          } else {
//                          // If the video is paused, play it.
                            _controller.play();
                            playPause = Icons.pause;
                          }
                        });
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Icon(
                        playPause,
                        size: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.01,
                      ),
                      shape: CircleBorder(),
                      focusColor: Colors.grey,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          var position = _controller.value.position.inSeconds;
                          _controller.seekTo(Duration(seconds: position + 10));
                        });
                      },
                      elevation: 2.0,
                      fillColor: Colors.white,
                      focusColor: Colors.grey,
                      child: Icon(
                        Icons.fast_forward,
                        size: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.01,
                      ),
                      shape: CircleBorder(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
