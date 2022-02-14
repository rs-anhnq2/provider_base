import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/common/common_view/common_button.dart';
import 'package:provider_base/common/core/app_color.dart';
import 'package:provider_base/models/reel/reel_state_notifier.dart';
import '../../common/common_view/common_indicator.dart';
import '../../models/reel/reel.dart';
import '../../utils/utils.dart';
import '../login/login_state_notifier.dart';

class ReelActionToolbar extends HookConsumerWidget with Utils {
  const ReelActionToolbar({Key? key, required this.reel}) : super(key: key);
  final double _iconSize = 42;
  final Reel reel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(loginProvider);
    final reelState = ref.watch(reelProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            CommonIndicator.imageCircle(
                AppColor.whileColor,
                28,
                userState.userDetail?.photoUrl ??
                    'https://picsum.photos/250?image=9'),
            Positioned(
              bottom: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            )
          ],
        ),
        CommonButton.iconBtn(
          context,
          onPressed: () {
            ref.read(reelProvider.notifier).tapLike();
          },
          iconBtn: const Icon(Icons.favorite),
          colorBtn: ref.watch(reelProvider).isLike == false
              ? AppColor.whileColor
              : AppColor.redColor,
          iconSize: _iconSize,
        ),
        const Text(
          '24325',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CommonButton.iconBtn(context,
            onPressed: () {},
            iconBtn: const Icon(Icons.comment),
            colorBtn: AppColor.whileColor,
            iconSize: _iconSize),
        const Text(
          '1234',
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        CommonButton.iconBtn(context,
            onPressed: () {},
            iconBtn: const Icon(Icons.reply),
            colorBtn: AppColor.whileColor,
            iconSize: _iconSize),
        IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
          iconSize: _iconSize,
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
