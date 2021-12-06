import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:provider/provider.dart';

class ImageTile extends StatelessWidget {
  final String title;
  final String image;
  final bool isSelected;
  final onTap;
  const ImageTile({
    required this.title,
    required this.isSelected,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                      child: Image.asset(
                        image,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: kSpaceBetweenTwoFields,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: getBottomSheetHeaderStyle(
                Provider.of<ThemeModel>(context).currentTheme,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
