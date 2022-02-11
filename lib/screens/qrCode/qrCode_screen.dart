import 'package:flutter/material.dart';
import 'package:provider_base/screens/qrCode/qrCode_state_notifier.dart';
import 'package:provider_base/screens/qrCode/scan_qrCode_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider_base/utils/utils.dart';

class QRCodeScreen extends HookConsumerWidget with Utils {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(qrCodeProvider);

    final nameController = TextEditingController();
    final emailController = TextEditingController();

    nameController.text = state.displayName ?? '';
    emailController.text = state.email ?? '';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QrImage(
              data: state.dataString ?? '',
              size: 200,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(hintText: 'Enter name'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Enter email'),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
                child: const Icon(Icons.done),
                onPressed: () => ref
                    .read(qrCodeProvider.notifier)
                    .generateQrCode(nameController.text, emailController.text)),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
                child: const Icon(Icons.qr_code),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScanQRCodeScreen()))),
          ],
        ),
      ),
    );
  }
}
