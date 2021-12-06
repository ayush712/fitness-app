import 'package:fithics_mobile/screens/notification_selection/notification_selection.dart';
import 'package:fithics_mobile/shared/components/a_tile/a_tile.dart';
import 'package:fithics_mobile/screens/date_of_birth_selection/date_of_birth_selection.dart';
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
                  AppLocalizations.of(context)!.activitySelectionHeader,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!.activitySelectionDescription,
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
                    Navigator.pushNamed(context, DateOfBirthSelection.id);
                  },
                  nextButtonTap: () {
                    Navigator.pushNamed(context, NotificationSelection.id);
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

  Iterable<Container> getActivityWidgets(
      BuildContext context, ActivityType selectedActivityType) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllActivities().map<Container>((activity) {
      return Container(
        child: Column(
          children: [
            ATile(
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
