import 'package:flutter/material.dart';
import 'package:provider_base/common/common_view/common_button.dart';

mixin Utils {
  Future<dynamic> push(
    BuildContext context,
    Widget route, {
    RouteSettings? settings,
    bool fullscreenDialog = false,
  }) async {
    return Navigator.of(context).push<dynamic>(
      MaterialPageRoute<dynamic>(
        builder: (context) => route,
        fullscreenDialog: fullscreenDialog,
        settings: settings,
      ),
    );
  }

  Future<dynamic> pushReplacement(BuildContext context, Widget routerName) {
    return Navigator.of(context).pushReplacement(
        MaterialPageRoute<dynamic>(builder: (context) => routerName));
  }

  Future<dynamic> pushAndRemoveUntil(BuildContext context, Widget routerName) {
    return Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => routerName), (route) => false);
  }

  Future<void> snackBar(
      BuildContext context, String title, Color titlecolor) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      title,
      style: TextStyle(color: titlecolor),
    )));
  }

  void pushName(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    Navigator.of(context).pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  AppBar getAppBar({
    required BuildContext context,
    String? title,
    String? leftTitle,
    bool centerTitle = true,
    double elevation = 0,
    Color? bgColor,
    Color titleColor = Colors.grey,
    PreferredSizeWidget? widget,
    List<Widget>? actions,
    String? logoUrl,
    int? unreadCount,
    bool hasSearch = false,
    bool hasClose = false,
    bool hasProfile = false,
    Widget? leading,
    VoidCallback? pressBack,
    dynamic popValue,
    void Function()? actionSearch,
    void Function()? actionProfile,
    void Function()? actionNotify,
  }) {
    final _title = title != null
        ? Text(
            title,
          )
        : null;

    final _actions = <Widget>[];

    if (hasClose) {
      _actions.add(CommonButton.closeBtn(context, popValue));
    }

    return AppBar(
      elevation: elevation,
      backgroundColor: bgColor,
      title: _title,
      centerTitle: centerTitle,
      leading:
          _leading(context, leading, logoUrl, leftTitle, pressBack, popValue),
      actions: actions ?? _actions,
      bottom: widget,
    );
  }

  static Widget _leading(
    BuildContext context,
    Widget? leading,
    String? logoUrl,
    String? leftTitle,
    VoidCallback? pressBack,
    dynamic popValue,
  ) {
    Widget _leading;

    if (logoUrl != null) {
      _leading = _logo(logoUrl);
    } else if (leftTitle != null) {
      _leading = _leftTitle(context, leftTitle);
    } else {
      _leading = leading ?? CommonButton.backBtn(context, pressBack, popValue);
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: _leading,
    );
  }

  static Widget _leftTitle(BuildContext context, String leftTitle) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(leftTitle),
    );
  }

  static Widget _logo(String url) {
    return Center(
      child: Container(
        width: 56,
        height: 22,
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: CachedNetworkImageProvider(
            //     url,
            //   ),
            // ),
            ),
      ),
    );
  }
}
