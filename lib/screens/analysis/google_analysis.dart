import 'package:firebase_analytics/firebase_analytics.dart';

class GoogleAnalysis {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  // login event
  Future analyseLoginWithGoogle(String email) async {
    await analytics.logEvent(name: 'user-login', parameters: {
      'email': email,
    });
  }

  // Screen tracking
  Future trackHomeScreen() async {
    await FirebaseAnalytics.instance
        .setCurrentScreen(
        screenName: 'HomeScreen'
    );
  }
}
