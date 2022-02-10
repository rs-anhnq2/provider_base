import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider_base/common/common_view/common_button.dart';
import 'package:provider_base/screens/otp/otp_controller.dart';
import 'package:provider_base/utils/utils.dart';

class OTPScreen extends StatefulWidget with Utils {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String dialCodeDigits = '+84';
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _otpController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 72,
            ),
            const Center(
              child: Text('Enter your mobile number', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 20),
              child: Text('Verify your account through phone number. We will send you a one time verification code.'),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                CountryCodePicker(
                  onChanged: (country) {
                    setState(() {
                      dialCodeDigits = country.dialCode!;
                    });
                  },
                  initialSelection: 'VN',
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  favorite: const ['+84', 'VN'],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 0, 15, 0),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      // prefix: Text(dialCodeDigits),
                    ),
                    maxLength: 12,
                    keyboardType: TextInputType.number,
                    controller: _otpController,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              child: CommonButton.customBtn(
                  label: 'Next',
                  iconColor: const Color(0xff5c5c5c),
                  iconData: Icons.arrow_forward,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPController(
                                  phone: _otpController.text,
                                  codeDigits: dialCodeDigits,
                                )));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
