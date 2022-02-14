import 'package:flutter/material.dart';
import 'package:provider_base/common/common_view/common_indicator.dart';
import 'package:provider_base/common/core/app_color.dart';
import 'package:provider_base/models/reel/reel_data.dart';
import 'package:provider_base/screens/reel/like_action.dart';
import 'package:provider_base/screens/reel/loading_animation.dart';
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

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.2),
        body: Stack(
          children: [
            _videoPlayerController.value.isInitialized
                ? Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _videoPlayerController.value.isPlaying
                              ? _videoPlayerController.pause()
                              : _videoPlayerController.play();
                        });
                      },
                      child: AspectRatio(
                        aspectRatio: _videoPlayerController.value.aspectRatio,
                        child: Stack(
                          children: [
                            VideoPlayer(
                              _videoPlayerController,
                            ),
                            _videoPlayerController.value.isPlaying
                                ? Container()
                                : Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 80,
                                      color:
                                          AppColor.whileColor.withOpacity(0.4),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                  )
                : const LoadingAnimation(),
              const Center(
                child: LikeAction(),
              )
          ],
        ));
  }

  Future<void> initialize() async {
    _videoPlayerController =
        VideoPlayerController.network('${widget.reel.sources}');
    await Future.wait([
      _videoPlayerController.initialize().then((value) {
        _videoPlayerController.play();
        setState(() {});
      })
    ]);
  }
}
