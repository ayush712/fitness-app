import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:provider/provider.dart';

class AnActivityType extends StatelessWidget {
  final String header;
  final String description;
  final IconData icon;
  final bool isSelected;
  final onTap;
  const AnActivityType({
    required this.header,
    required this.description,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
        padding: EdgeInsets.all(kSpaceBetweenTwoFields),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            width: 4.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24.0,
              semanticLabel: description,
            ),
            SizedBox(
              width: kSpaceBetweenTwoFields,
            ),
            Container(
              width: (MediaQuery.of(context).size.width -
                  (24 + kSpaceBetweenTwoFields * 8)),
              child: Column(
                children: [
                  Text(
                    header,
                    textAlign: TextAlign.left,
                    style: getWidgetHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme,
                    ),
                  ),
                  SizedBox(
                    height: kSpaceBetweenTwoFields,
                  ),
                  Text(
                    header,
                    textAlign: TextAlign.left,
                    style: getWidgetSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
