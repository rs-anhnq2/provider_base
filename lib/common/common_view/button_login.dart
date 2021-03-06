import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider_base/common/core/app_style.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.urlSvg,
    required this.message,
    required this.onTap,
    this.isEmail = false,
  }) : super(key: key);
  final String urlSvg;
  final String message;
  final Function() onTap;
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppStyles.white,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        child: Row(
          children: [
            !isEmail
                ? _icon()
                : const Icon(
                    Icons.mail_outline,
                    size: 20,
                  ),
            Expanded(
              child: Center(
                child: Text(
                  message,
                  style: AppStyles.textMedium.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            _icon(transparent: true),
          ],
        ),
      ),
    );
  }

  Widget _icon({bool transparent = false}) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: SvgPicture.asset(
        urlSvg,
        height: 16,
        width: 16,
        color: transparent ? Colors.transparent : null,
      ),
    );
  }
}
