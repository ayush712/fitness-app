import 'package:fithics_mobile/screens/activity_level_selection/components/an_activity_type.dart';
import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';

class ActivityLevelSelection extends StatelessWidget {
  static const String id = 'activity_level_selection';
  @override
  Widget build(BuildContext context) {
    ActivityDetail _selectedActivity =
        Provider.of<UserPreferenceModel>(context).getActivity();

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
                  AppLocalizations.of(context)!.genderSelectionHeader,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!.genderSelectionDescription,
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 4,
                ),
                Column(
                  children: [
                    ...getActivityWidgets(
                        context, _selectedActivity.activityType),
                  ],
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                BackContinueButtons(
                  previousButtonTap: () {
                    Navigator.pushNamed(context, GenderSelection.id);
                  },
                  nextButtonTap: () {},
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

  Iterable<Container> getActivityWidgets(
      BuildContext context, ActivityType selectedActivityType) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllActivities().map<Container>((activity) {
      return Container(
        child: Column(
          children: [
            AnActivityType(
              header: activity.header,
              description: activity.description,
              icon: activity.icon,
              isSelected: activity.activityType == selectedActivityType,
              onTap: () {
                Provider.of<UserPreferenceModel>(context, listen: false)
                    .setActivity(
                  activity.activityType,
                );
              },
            ),
            SizedBox(
              height: kSpaceBetweenTwoFields,
            ),
          ],
        ),
      );
    });
  }
}
