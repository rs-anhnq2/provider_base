import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/common/common_view/common_indicator.dart';
import 'package:provider_base/common/core/app_color.dart';
import 'package:provider_base/screens/login/login_screen.dart';
import 'package:provider_base/screens/login/login_state_notifier.dart';
import 'package:provider_base/screens/post/post_screen.dart';
import 'package:provider_base/screens/reel/reel_screen.dart';
import 'package:provider_base/utils/utils.dart';

import 'home_state_notifier.dart';

class HomeScreen extends HookConsumerWidget with Utils {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(homeProvider);
    // if declare state here entire HomeScreen will be rebuild when state change
    double _avtRadius = 32;
    final userState = ref.watch(loginProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter example',
          style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: drawerCustom(context, ref),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Consumer(
            builder: (_, ref, child) {
              final state = ref.watch(homeProvider);
              return Column(
                children: [
                  Center(child: Text('${state.counter}')),
                  Text('Get random num: ${state.random}'),
                  TextButton(
                    onPressed: () =>
                        ref.read(homeProvider.notifier).getRandom(),
                    child: const Text('Get Random'),
                  ),
                  Text(
                    'Rebuild when state change: $secondNow',
                  ),
                ],
              );
            },
          ),
          CommonIndicator.imageCircle(AppColor.whileColor, _avtRadius, userState.userDetail?.photoUrl ?? 'https://picsum.photos/250?image=9'),
          Text(
            userState.userDetail?.displayName ?? '',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'NOT rebuild: $secondNow',
          ),
          ElevatedButton(
              onPressed: () => push(context, const PostScreen()),
              child: const Text('Post List'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(homeProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }

  String get secondNow {
    return DateTime.now().second.toString();
  }

  Widget drawerCustom(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(loginProvider);
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              userState.userDetail?.displayName ?? '',
              style: const TextStyle(fontSize: 24),
            ),
            accountEmail: Text(userState.userDetail?.email ?? ''),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage(userState.userDetail?.photoUrl ?? ''),
            ),
          ),
          _listTileDrawer(
            iconTile: const Icon(Icons.home),
            titleTile: 'Reel',
            onTap: () => push(context,const ReelScreen()),
          ),
          _listTileDrawer(
            iconTile: const Icon(Icons.power_settings_new),
            titleTile: 'Logout',
            onTap: () {
              ref.read(loginProvider.notifier).logOut();
              pushAndRemoveUntil(context, const LoginScreen());
            },
          ),
        ],
      ),
    );
  }

  Widget _listTileDrawer(
      {required Icon iconTile,
      required String titleTile,
      required Function() onTap}) {
    return ListTile(
      leading: iconTile,
      title: Text(titleTile),
      onTap: onTap,
    );
  }
}
