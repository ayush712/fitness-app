import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/image_tile/image_tile.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkoutTypeSelection extends StatelessWidget {
  static const String id = 'workout_type_selection';
  @override
  Widget build(BuildContext context) {
    WorkoutType _selectedWorkoutType =
        Provider.of<UserPreferenceModel>(context).getWorkoutType();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          child: Column(
            children: [
              SizedBox(
                height: kSpaceBetweenTwoFields * 4,
              ),
              Text(
                AppLocalizations.of(context)!.workoutTypeSelectionHeader,
                textAlign: TextAlign.left,
                style: getBottomSheetHeaderStyle(
                    Provider.of<ThemeModel>(context).currentTheme),
              ),
              SizedBox(
                height: kSpaceBetweenTwoFields,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: kSpaceBetweenTwoFields,
                runSpacing: kSpaceBetweenTwoFields,
                children: [
                  ...getWorkoutTypeWidgets(
                      context, _selectedWorkoutType.workoutTypeType),
                ],
              ),
              SizedBox(
                height: kSpaceBetweenTwoFields * 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: ButtonWrapper(
                      onPressed: () {
                        Navigator.pushNamed(context, GenderSelection.id);
                      },
                      title: AppLocalizations.of(context)!.next,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: kSpaceBetweenTwoFields * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Iterable<Container> getWorkoutTypeWidgets(
      BuildContext context, WorkoutTypeType selectedWorkoutType) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllWorkoutTypes().map<Container>((workoutType) {
      return Container(
        child: ImageTile(
          title: workoutType.title,
          isSelected: workoutType.workoutTypeType == selectedWorkoutType,
          image: workoutType.image,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setWorkoutType(
              workoutType.workoutTypeType,
            );
          },
        ),
      );
    });
  }
}
