import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/common/common_view/simple_web_view.dart';
import 'package:provider_base/common/core/app_style.dart';
import 'package:provider_base/screens/dashboard/cupertino_tab_controller_hook.dart';
import 'package:provider_base/screens/dashboard/dashboard_state_notifier.dart';
import 'package:provider_base/screens/dialog/dialog_screen.dart';
import 'package:provider_base/screens/form/form_screen.dart';
import 'package:provider_base/screens/home/home_screen.dart';
import 'package:provider_base/screens/todo/todo_screen.dart';
import 'package:provider_base/utils/utils.dart';

class DashboardScreen extends HookConsumerWidget with Utils {
  const DashboardScreen({Key? key}) : super(key: key);
  // TODO(Minnt): add button back to module screen
  static String routeName = '/dashboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useCupertinoTabController();

    int _oldIndex = 0;

    final List<GlobalKey<NavigatorState>> _tabNavKeyList =
        List.generate(5, (index) => index)
            .map((e) => GlobalKey<NavigatorState>())
            .toList();

    final _tabTypes = [
      TabItem.home,
      TabItem.message,
      TabItem.document,
      TabItem.workflow,
      TabItem.otherMenu,
    ];

    const _pages = [
      TodoScreen(),
      FormScreen(),
      Scaffold(
          body: SafeArea(
        child:
            SimpleWebView(url: 'https://pub.dev/packages/form_field_validator'),
      )),
      DialogScreen(),
      // TODO(Minnt): add setting screen with change language
      HomeScreen(
        title: 'Home 5',
      ),
    ];

    Widget _buttonIcon({IconData? icon, Color? color}) {
      return Icon(
        icon ?? Icons.home,
        color: color ?? Colors.blue,
        size: 25,
      );
    }

    Widget _buildOtherBadge(BuildContext context) {
      return const SizedBox();
    }

    Widget _buildUnreadMessagesBadge(BuildContext context) {
      return const SizedBox();
    }

    void _onTapItem(
        WidgetRef ref, int index, CupertinoTabController controller) {
      if (index != _oldIndex) {
        _oldIndex = index;
        return;
      }

      final canPop =
          _tabNavKeyList[controller.index].currentState?.canPop() ?? false;
      if (canPop) {
        _tabNavKeyList[controller.index]
            .currentState!
            .popUntil((route) => route.isFirst);
      } else {
        ref
            .read(dashboardNotifierProvider.notifier)
            .notifyRefresh(_tabTypes[index]);
      }
    }

    return CupertinoTabScaffold(
      backgroundColor: Colors.white,
      controller: _controller,
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        onTap: (index) => _onTapItem(ref, index, _controller),
        items: [
          BottomNavigationBarItem(
            icon: _buttonIcon(
              color: AppStyles.cardLightModeColor,
            ),
            activeIcon: _buttonIcon(
              color: AppStyles.cardDarkModeColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: _buttonIcon(
                      color: AppStyles.cardLightModeColor,
                      icon: Icons.text_fields),
                ),
                Positioned(
                  top: 0,
                  right: 5,
                  child: _buildUnreadMessagesBadge(context),
                ),
              ],
            ),
            activeIcon: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: _buttonIcon(
                      color: AppStyles.cardDarkModeColor,
                      icon: Icons.text_fields),
                ),
                Positioned(
                  top: 0,
                  right: 5,
                  child: _buildUnreadMessagesBadge(context),
                ),
              ],
            ),
            label: 'Form',
          ),
          BottomNavigationBarItem(
            icon: _buttonIcon(
              icon: Icons.web,
              color: AppStyles.cardLightModeColor,
            ),
            activeIcon: _buttonIcon(
              icon: Icons.web,
              color: AppStyles.cardDarkModeColor,
            ),
            label: 'Web',
          ),
          BottomNavigationBarItem(
            icon: _buttonIcon(
                color: AppStyles.cardLightModeColor, icon: Icons.window),
            activeIcon: _buttonIcon(
                color: AppStyles.cardDarkModeColor, icon: Icons.window),
            label: 'Dialog',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: _buttonIcon(
                    icon: Icons.settings,
                    color: AppStyles.cardLightModeColor,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 5,
                  child: _buildOtherBadge(context),
                ),
              ],
            ),
            activeIcon: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: _buttonIcon(
                    icon: Icons.settings,
                    color: AppStyles.cardDarkModeColor,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 5,
                  child: _buildOtherBadge(context),
                ),
              ],
            ),
            label: 'Setting',
          ),
        ],
        activeColor: AppStyles.cardDarkModeColor,
        inactiveColor: AppStyles.cardLightModeColor,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          navigatorKey: _tabNavKeyList[index],
          builder: (context) {
            return _pages[index];
          },
        );
      },
    );
  }
}
