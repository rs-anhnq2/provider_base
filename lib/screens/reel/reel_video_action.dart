import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider_base/common/common_view/common_indicator.dart';
import 'package:provider_base/screens/reel/like_acction.dart';
import 'package:video_player/video_player.dart';

import '../../models/reel/reel.dart';

class ReelVideoAction extends StatefulWidget {
  const ReelVideoAction({Key? key, required this.reel}) : super(key: key);
  final Reel reel;
  @override
  _ReelVideoActionState createState() => _ReelVideoActionState();
}

class _ReelVideoActionState extends State<ReelVideoAction> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isLike = false;
  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.2),
        body: Stack(
          children: [
            _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
                ? GestureDetector(
              onDoubleTap: (){
                setState(() {
                  _isLike = !_isLike;
                }
                );
              },
              child: Chewie(
                controller: _chewieController!,
              ),
            )
                :  CommonIndicator.loadingIndicator(),
            if(_isLike)
              const Center(
                child: LikeAcction(),
              )
          ],
        )

    );
  }

  Future<void> initialize() async {
    _videoPlayerController =
        VideoPlayerController.network('${widget.reel.sources}');
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: _videoPlayerController.value.aspectRatio,
        autoPlay: true,
        looping: true,
        showControls: true,
        //showControlsOnInitialize: true,
        allowFullScreen: false,
    );
    setState(() {});
  }
}
