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
        padding: EdgeInsets.all(kSpaceBetweenTwoFields),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).shadowColor
              : Theme.of(context).cardColor,
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
          children: [
            Icon(
              icon,
              size: 36.0,
              semanticLabel: description,
            ),
            SizedBox(
              width: kSpaceBetweenTwoFields,
            ),
            Container(
              width: (MediaQuery.of(context).size.width -
                  (36.0 + kSpaceBetweenTwoFields * 8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: getWidgetHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme,
                    ),
                  ),
                  Text(
                    description,
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
