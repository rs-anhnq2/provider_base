import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../models/reel/reel_data.dart';
import '../../models/reel/reel_state_notifier.dart';
import 'reel_detail.dart';
import 'reels_action_toolbar.dart';
import 'reel_video_action.dart';

class ReelScreen extends HookConsumerWidget {
  const ReelScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Reels',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.photo_camera_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reelData.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onDoubleTap: (){
                          ref.read(reelProvider.notifier).tapLike();
                        },
                        child: ReelVideoAction(
                          reel: reelData[index],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Flexible(
                                  flex: 14,
                                  child: ReelDetail(
                                    reel: reelData[index],
                                  )),
                              Flexible(
                                  flex: 3,
                                  child: ReelActionToolbar(
                                    reel: reelData[index],
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
