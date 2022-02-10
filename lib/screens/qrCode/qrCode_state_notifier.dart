import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider_base/screens/qrCode/qrCode_state.dart';

import '../../models/user/user_detail.dart';

final qrCodeProvider = StateNotifierProvider<QrCodeStateNotifier, QrCodeState>(
    (_) => QrCodeStateNotifier());

class QrCodeStateNotifier extends StateNotifier<QrCodeState> {
  QrCodeStateNotifier() : super(QrCodeState());

  void generateQrCode(String displayName, String email) {
    String dataString = '{"displayName": "$displayName", "email": "$email"}';
    state = state.copyWith(dataString: dataString);
  }

  void scanQrCode(String dataString) async {
    UserDetail userDetail = UserDetail.fromJson(json.decode(dataString));
    state = state.copyWith(
        dataString: dataString,
        displayName: userDetail.displayName,
        email: userDetail.email);
  }
}
