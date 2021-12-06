import 'package:fithics_mobile/screens/goal_selection/goal_selection.dart';
import 'package:fithics_mobile/screens/workout_type_selection/workout_type_selection.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/components/text_tile/text_tile.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkoutDaysSelection extends StatelessWidget {
  static const String id = 'workout_days_selection';
  @override
  Widget build(BuildContext context) {
    List<WorkoutDayType> _selectedWorkoutDays =
        Provider.of<UserPreferenceModel>(context).getWorkoutDays();

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
                  AppLocalizations.of(context)!.workoutDaysHeader,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!.workoutDaysDescription(3),
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 4,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: kSpaceBetweenTwoFields,
                  runSpacing: kSpaceBetweenTwoFields,
                  children: [
                    ...getWorkoutDaysWidgets(context, _selectedWorkoutDays),
                  ],
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                BackContinueButtons(
                  previousButtonTap: () {
                    Navigator.pushNamed(context, GoalSelection.id);
                  },
                  nextButtonTap: () {
                    Navigator.pushNamed(context, WorkoutTypeSelection.id);
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

  Iterable<Container> getWorkoutDaysWidgets(
      BuildContext context, List<WorkoutDayType> selectedWorkoutDays) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllWorkoutDays().map<Container>((workoutDay) {
      bool isSelected = selectedWorkoutDays
          .any((element) => element == workoutDay.workoutDayType);
      return Container(
        child: TextTile(
          title: workoutDay.title.toString(),
          isSelected: isSelected,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setWorkoutDays(workoutDay.workoutDayType, !isSelected);
          },
        ),
      );
    });
  }
}
