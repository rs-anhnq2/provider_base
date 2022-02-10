import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:provider_base/common/common_view/common_button.dart';
import 'package:provider_base/screens/home/home_screen.dart';

class OTPController extends StatefulWidget {
  const OTPController({Key? key, required this.phone, required this.codeDigits})
      : super(key: key);
  final String phone;
  final String codeDigits;
  @override
  _OTPControllerState createState() => _OTPControllerState();
}

class _OTPControllerState extends State<OTPController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode _pinOTPCodeFocus = FocusNode();
  String? verificationCode;

  @override
  void initState() {
    super.initState();
    verifyPhoneNumber();
  }

  @override
  void dispose() {
    super.dispose();
    _pinOTPCodeController.dispose();
    _pinOTPCodeFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('OTP Verification'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  verifyPhoneNumber();
                },
                child: Text(
                  'Verifying : ${widget.codeDigits} ${widget.phone}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: PinPut(
                fieldsCount: 6,
                textStyle:
                    const TextStyle(fontSize: 25, color: Colors.blueAccent),
                eachFieldWidth: 40,
                eachFieldHeight: 55,
                focusNode: _pinOTPCodeFocus,
                controller: _pinOTPCodeController,
                submittedFieldDecoration: pinOTPCodeDecoration,
                selectedFieldDecoration: pinOTPCodeDecoration,
                followingFieldDecoration: pinOTPCodeDecoration,
                pinAnimationType: PinAnimationType.rotation,
                onSubmit: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: verificationCode!, smsCode: pin))
                        .then((value) {
                      if (value.user != null &&
                          _pinOTPCodeController.text == pin) {
                        FocusScope.of(context).requestFocus(_pinOTPCodeFocus);
                        print('pin-- ${pin}');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreen(title: 'Base')));
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Invalid OTP'),
                      duration: Duration(seconds: 2),
                    ));
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              child: CommonButton.customBtn(
                  label: 'Send to OTP',
                  iconColor: Colors.grey,
                  iconData: FontAwesomeIcons.commentDots,
                  onTap: () {
                    verifyPhoneNumber();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '${widget.codeDigits} ${widget.phone}',
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          if (value.user != null) {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const LoginScreen()));
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.message.toString()),
          duration: const Duration(seconds: 2),
        ));
        print(e.message.toString());
      },
      codeSent: (String vID, int? resendToken) {
        setState(() {
          verificationCode = vID;
        });
      },
      codeAutoRetrievalTimeout: (String vID) {
        setState(() {
          verificationCode = vID;
        });
      },
      timeout: const Duration(seconds: 60),
    );
  }

  final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.blueAccent,
      ));
}
