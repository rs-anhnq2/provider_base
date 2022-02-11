import 'package:flutter/material.dart';
import 'package:provider_base/models/reel/reel_state_notifier.dart';

import '../../models/reel/reel_data.dart';
import 'reel_detal.dart';
import 'reels_acction_toolbar.dart';
import 'reel_video_acction.dart';


class ReelScreen extends StatefulWidget {
  const ReelScreen({Key? key}) : super(key: key);

  @override
  _ReelScreenState createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  @override
  Widget build(BuildContext context) {
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
                      ReelVideoAction(
                        reel: reelData[index],
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
