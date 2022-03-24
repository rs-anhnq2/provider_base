import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';

enum AnalyticsEventType {
  appLaunched,
  notification,
  takePicture,
  otpCaptcha,
  loginWithApple,
  loginWithGoogle,
  loginWithFacebook,
  playVideo,
}

extension AnalyticsEventTypeExtension on AnalyticsEventType {
  String get name {
    var string = '';
    switch (this) {
      case AnalyticsEventType.appLaunched:
        string = 'app_launched';
        break;
      case AnalyticsEventType.notification:
        string = 'notification';
        break;
      case AnalyticsEventType.takePicture:
        string = 'take_picture';
        break;
      case AnalyticsEventType.otpCaptcha:
        string = 'otp_captcha';
        break;
      case AnalyticsEventType.loginWithApple:
        string = 'login_with_apple';
        break;
      case AnalyticsEventType.loginWithFacebook:
        string = 'login_with_facebook';
        break;
      case AnalyticsEventType.loginWithGoogle:
        string = 'login_with_google';
        break;
      case AnalyticsEventType.playVideo:
        string = 'play_video';
        break;
    }
    return string;
  }
}

class AnalyticsUtil {
  AnalyticsUtil();
  static FirebaseAnalytics analytics = FirebaseAnalytics();

  Future<void> logEvent(
    AnalyticsEventType? type, {
    Map<String, dynamic>? parameters,
  }) async {
    try {
      await analytics.logEvent(
        name: type!.name,
        parameters: parameters,
      );
    } on Exception catch (e) {
      log('$e');
    }
  }

  Future<void> logLogin({String? loginMethod}) {
    return analytics.logLogin(loginMethod: loginMethod);
  }

  Future<void> setCurrentScreen(String s, {String? screenName}) {
    return analytics.setCurrentScreen(screenName: screenName);
  }
}
