import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/common/core/app_style.dart';
import 'package:provider_base/utils/utils.dart';

class DialogScreen extends StatelessWidget with Utils {
  const DialogScreen({Key? key}) : super(key: key);
  // TODO(Minnt):
  // Move Dialog to Form screen and rename Form and Dialog
  // refactor code, havent format yet
  // Make File preview screen in here with pdf, image, video
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context: context, title: 'Dialog Screen'),
      body: const DialogBody(),
    );
  }
}

class DialogBody extends HookConsumerWidget {
  const DialogBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding:
          const EdgeInsets.symmetric(horizontal: AppStyles.horizontalSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _rowDialog(
            context,
            'Ok dialog',
            () => showOkAlertDialog(
                context: context, title: 'Title', message: 'This is message'),
          ),
          _rowDialog(
            context,
            'Confirm dialog',
            () => showConfirmationDialog(
              context: context,
              title: 'Title',
              message: 'This is message',
            ),
          ),
          _rowDialog(
            context,
            'Ok cancel dialog',
            () => showOkCancelAlertDialog(
              context: context,
              title: 'Title',
              message: 'This is message',
            ),
          ),
          _rowDialog(
            context,
            'Modal action sheet',
            () => showModalActionSheet(
              context: context,
              title: 'Title',
              message: 'This is message',
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowDialog(
      BuildContext context, String message, VoidCallback? voidCallback) {
    return GestureDetector(
      onTap: voidCallback,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          message,
          style: AppStyles.textRegular,
        ),
      ),
    );
  }
}