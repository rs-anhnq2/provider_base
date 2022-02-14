import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/common/core/app_color.dart';

import '../../models/reel/reel_state_notifier.dart';

class LikeAction extends HookConsumerWidget {
  const LikeAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reelState = ref.watch(reelProvider);
    return reelState.isLike == true
        ? likeBuilder(AppColor.redColor)
        : likeBuilder(AppColor.whileColor);
  }

  Widget likeBuilder(Color colorAction) {
    return FutureBuilder(
      future: tempFuture(),
      builder: (context, snapshot) =>
          snapshot.connectionState != ConnectionState.done
              ? Icon(Icons.favorite, color: colorAction, size: 110)
              : const SizedBox(),
    );
  }

  Future<int> tempFuture() async {
    return Future.delayed(const Duration(microseconds: 5000));
  }
}
