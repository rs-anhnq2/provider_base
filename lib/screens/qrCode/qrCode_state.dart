import 'package:freezed_annotation/freezed_annotation.dart';
part 'qrCode_state.freezed.dart';

@freezed
abstract class QrCodeState with _$QrCodeState {
  factory QrCodeState({
  String? dataString,
  String? displayName,
  String? email,
}) = _QrCodeState;
}