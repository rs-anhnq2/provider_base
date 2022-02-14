import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/common/core/app_color.dart';

import '../../models/reel/reel_state_notifier.dart';

class LikeAcction extends HookConsumerWidget {
  const LikeAcction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Center(
      child: FutureBuilder(
        future: tempFuture(ref),
        builder: (context, snapshot) =>
          snapshot.connectionState != ConnectionState.done
              ? const Icon(Icons.favorite, color: AppColor.redColor, size: 110)
              : const SizedBox(),
      ),
    );
  }

  Future<int> tempFuture(WidgetRef ref) async {
    //ref.read(reelProvider.notifier).tapLike();
    return await Future.delayed(const Duration(milliseconds: 500));
  }
}
