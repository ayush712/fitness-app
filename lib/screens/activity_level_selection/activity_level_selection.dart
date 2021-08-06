import 'package:fithics_mobile/screens/activity_level_selection/components/an_activity_type.dart';
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ...getActivityWidgets(context),
                  ],
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                BackContinueButtons(
                  previousButtonTap: () {},
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

  Iterable<Container> getActivityWidgets(BuildContext context) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllActivities().map<Container>((activity) {
      return Container(
        child: AnActivityType(
          header: activity.header,
          description: activity.description,
          icon: activity.icon,
          isSelected: activity.activityType == ActivityType.Sedentary,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setActivity(
              activity.activityType,
            );
          },
        ),
      );
    });
  }
}
