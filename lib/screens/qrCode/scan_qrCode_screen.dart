import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider_base/screens/qrCode/qrCode_screen.dart';
import 'package:provider_base/screens/qrCode/qrCode_state_notifier.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_code_tools/qr_code_tools.dart';

class ScanQRCodeScreen extends ConsumerStatefulWidget {
  const ScanQRCodeScreen({Key? key}) : super(key: key);

  @override
  _ScanQRCodeScreenState createState() => _ScanQRCodeScreenState();
}

class _ScanQRCodeScreenState extends ConsumerState<ScanQRCodeScreen> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  // For hot reload issue
  @override
  void reassemble() async {
    // TODO: implement reassemble
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(qrCodeProvider);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildQRView(context),
          Positioned(
            top: 30,
            child: buildControlButton(context),
          ),
        ],
      ),
    );
  }

  // Custom scan area here
  Widget buildQRView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
        borderLength: 20,
        borderWidth: 10,
        borderRadius: 10,
        borderColor: Colors.green,
      ),
    );
  }

  // Control buttons
  Widget buildControlButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () async {
                await controller?.toggleFlash();
                setState(() {});
              },
              icon: FutureBuilder<bool?>(
                  future: controller?.getFlashStatus(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Icon(
                          snapshot.data! ? Icons.flash_on : Icons.flash_off);
                    }
                    return Container();
                  })),
          IconButton(
              onPressed: () async {
                await controller?.flipCamera();
                setState(() {});
              },
              icon: FutureBuilder(
                  future: controller?.getCameraInfo(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return const Icon(Icons.switch_camera);
                    }
                    return Container();
                  })),
          IconButton(
            onPressed: () async {
              String? dataString = await _pickPhotoFromGallery();
              ref.read(qrCodeProvider.notifier).scanQrCode(dataString ?? '');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QRCodeScreen()));
            },
            icon: const Icon(Icons.photo),
          ),
        ],
      ),
    );
  }

  // Control scanning area
  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) {
      if (barcode != null) {
        ref.read(qrCodeProvider.notifier).scanQrCode(barcode.code!);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => QRCodeScreen()));
      }
    });
  }

  Future<String?> _pickPhotoFromGallery() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      String data = await QrCodeToolsPlugin.decodeFrom(pickedFile.path);
      return data;
    }
    return '';
  }
}
