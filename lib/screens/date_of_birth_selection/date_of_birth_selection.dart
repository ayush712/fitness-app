import 'package:fithics_mobile/screens/activity_level_selection/activity_level_selection.dart';
import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/screens/height_selection/height_selection.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateOfBirthSelection extends StatelessWidget {
  static const String id = 'date_of_birth_selection';
  final DateTime _today = DateTime.now();
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
                  AppLocalizations.of(context)!.dobSelectionHeader,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!.dobSelectionDescription,
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                Container(
                  height: MediaQuery.of(context).size.height -
                      (kSpaceBetweenTwoFields * 28),
                  child: CupertinoDatePicker(
                    maximumDate: _today,
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: Provider.of<UserPreferenceModel>(
                      context,
                    ).getDob(),
                    onDateTimeChanged: (val) {
                      Provider.of<UserPreferenceModel>(
                        context,
                        listen: false,
                      ).setDob(val);
                    },
                  ),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                BackContinueButtons(
                  previousButtonTap: () {
                    Navigator.pushNamed(
                      context,
                      GenderSelection.id,
                    );
                  },
                  nextButtonTap: () {
                    Navigator.pushNamed(
                      context,
                      HeightSelection.id,
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
