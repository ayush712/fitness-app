import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:provider/provider.dart';

class AGender extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isSelected;
  final onTap;
  const AGender(
      {required this.text,
      required this.imagePath,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Theme.of(context).shadowColor
                          : Colors.transparent,
                    ),
                    child: Image.asset(
                      imagePath,
                    ),
                  ),
                  SizedBox(
                    height: kSpaceBetweenTwoFields,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
