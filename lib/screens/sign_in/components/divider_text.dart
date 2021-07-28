import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DividerText extends StatelessWidget {
  final String text;
  DividerText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Divider(
          thickness: 1.0,
        ),
      ),
      SizedBox(
        width: 16.0,
      ),
      Text(
        text,
        style:
            getDividerTextStyle(Provider.of<ThemeModel>(context).currentTheme),
      ),
      SizedBox(
        width: 16.0,
      ),
      Expanded(
        child: Divider(
          thickness: 1.0,
        ),
      ),
    ]);
  }
}
