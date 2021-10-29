import 'package:fithics_mobile/screens/notification_selection/notification_selection.dart';
import 'package:fithics_mobile/shared/components/a_tile/a_tile.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GoalSelection extends StatelessWidget {
  static const String id = 'goal_selection';
  @override
  Widget build(BuildContext context) {
    GoalDetail _selectedGoal =
        Provider.of<UserPreferenceModel>(context).getGoal();

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
                  AppLocalizations.of(context)!.goalSelectionHeader,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!.goalSelectionDescription,
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 4,
                ),
                Column(
                  children: [
                    ...getGoalWidgets(context, _selectedGoal.goalType),
                  ],
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                BackContinueButtons(
                  previousButtonTap: () {
                    Navigator.pushNamed(context, NotificationSelection.id);
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

  Iterable<Container> getGoalWidgets(
      BuildContext context, GoalType selectedGoalType) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllGoals().map<Container>((goal) {
      return Container(
        child: Column(
          children: [
            ATile(
              header: goal.header,
              description: goal.description,
              icon: goal.icon,
              isSelected: goal.goalType == selectedGoalType,
              onTap: () {
                Provider.of<UserPreferenceModel>(context, listen: false)
                    .setGoal(
                  goal.goalType,
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
