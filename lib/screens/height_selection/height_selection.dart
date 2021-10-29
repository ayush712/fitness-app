import 'package:fithics_mobile/screens/date_of_birth_selection/date_of_birth_selection.dart';
import 'package:fithics_mobile/screens/notification_selection/notification_selection.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//TODO:
class HeightSelection extends StatelessWidget {
  static final id = 'height_selection';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          children: [
            Column(
              children: [
                SizedBox(
                  height: kSpaceBetweenTwoFields * 4,
                ),
                Text(
                  AppLocalizations.of(context)!.heightSelectionHeader,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!.heightSelectionDescription,
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                Container(
                  height: MediaQuery.of(context).size.height -
                      (kSpaceBetweenTwoFields * 25),
                  child: CupertinoPicker(
                    itemExtent: 64.0,
                    backgroundColor: Colors.white,
                    onSelectedItemChanged: (int index) {
                      print(index + 1);
                      // setState(() {
                      //   ft = (index + 1);
                      //   heightController.text =
                      //       "$ft' $inches\"";
                      // });
                    },
                    children: List.generate(12, (index) {
                      return Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                BackContinueButtons(
                  previousButtonTap: () {
                    Navigator.pushNamed(
                      context,
                      DateOfBirthSelection.id,
                    );
                  },
                  nextButtonTap: () {
                    Navigator.pushNamed(
                      context,
                      NotificationSelection.id,
                    );
                  },
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
