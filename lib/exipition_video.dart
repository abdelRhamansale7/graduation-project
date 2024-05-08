import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TutVid extends StatelessWidget {
  const TutVid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // List of video asset paths
    List<String> videoAssets = [
      'assets/video/v1.mp4',
      'assets/video/v2.mp4',
      'assets/video/v3.mp4',
      'assets/video/v4.mp4',
      'assets/video/v5.mp4',
      'assets/video/v6.mp4',
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.03, bottom: screenHeight * 0.03),
                child: const Center(
                  child: Text(
                    "Exhibition Video",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.7,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: videoAssets.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: screenHeight * 0.03);
                  },
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.04),
                      child: Stack(
                        children: [
                          Container(
                            width: screenWidth * 0.85,
                            height: screenHeight * 0.32, // Adjust height as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black,
                            ),
                            child: VideoItem(videoAssetPath: videoAssets[index]),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoItem extends StatefulWidget {
  final String videoAssetPath;

  const VideoItem({Key? key, required this.videoAssetPath}) : super(key: key);

  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoAssetPath)
      ..initialize().then((_) {
        setState(() {});
      })
      ..addListener(() {
        setState(() {
          _isPlaying = _controller.value.isPlaying;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : const CircularProgressIndicator(),
            _isPlaying
                ? const SizedBox.shrink() // If video is playing, don't show play button
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      });
                    },
                    child: const Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
