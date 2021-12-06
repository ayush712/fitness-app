import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:provider/provider.dart';

class TextTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final onTap;
  const TextTile({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
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
        child: Text(
          title,
          style: getWidgetHeaderStyle(
            Provider.of<ThemeModel>(context).currentTheme,
          ),
        ),
      ),
    );
  }
}
