import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpSignInRedirection extends StatelessWidget {
  final String text;
  final String linkText;
  final String redirectToLink;
  SignUpSignInRedirection(
      {required this.text,
      required this.linkText,
      required this.redirectToLink});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style:
              getInfoTextStyle(Provider.of<ThemeModel>(context).currentTheme),
        ),
        SizedBox(
          width: 8.0,
        ),
        GestureDetector(
            child: Text(
              linkText,
              style:
                  getLinkStyle(Provider.of<ThemeModel>(context).currentTheme),
            ),
            onTap: () {
              Navigator.pushNamed(context, redirectToLink);
            })
      ],
    );
  }
}
