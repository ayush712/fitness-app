import 'package:fithics_mobile/screens/date_of_birth_selection/date_of_birth_selection.dart';
import 'package:fithics_mobile/screens/goal_selection/goal_selection.dart';
import 'package:fithics_mobile/screens/height_selection/height_selection.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';

class NotificationSelection extends StatelessWidget {
  static const String id = 'notification_selection';
  @override
  Widget build(BuildContext context) {
    bool _allowNotification =
        Provider.of<UserPreferenceModel>(context).getNotification();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: kSpaceBetweenTwoFields * 4),
                    Text(
                      AppLocalizations.of(context)!.notificationSelectionHeader,
                      style: getHeaderStyle(
                          Provider.of<ThemeModel>(context).currentTheme),
                    ),
                    SizedBox(height: kSpaceBetweenTwoFields),
                    Text(
                      AppLocalizations.of(context)!
                          .notificationSelectionDescription,
                      textAlign: TextAlign.center,
                      style: getSubHeaderStyle(
                          Provider.of<ThemeModel>(context).currentTheme),
                    ),
                    SizedBox(height: kSpaceBetweenTwoFields * 6),
                    Image.asset('assets/images/notification.png'),
                  ],
                ),
              ),
              Column(
                children: [
                  BackContinueButtons(
                    previousButtonTap: () {
                      Navigator.pushNamed(context, HeightSelection.id);
                    },
                    nextButtonTap: () {
                      Navigator.pushNamed(context, GoalSelection.id);
                    },
                  ),
                  SizedBox(height: kSpaceBetweenTwoFields * 2),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
