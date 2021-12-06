import 'package:fithics_mobile/screens/food_type_selection/food_type_selection.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/image_tile/image_tile.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkoutsDayWise extends StatelessWidget {
  static const String id = 'workouts_day_wise';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          child: Column(
            children: [
              SizedBox(
                height: kSpaceBetweenTwoFields * 4,
              ),
              ...getWorkoutsDayWiseWidgets(context),
            ],
          ),
        ),
      ),
    );
  }

  Iterable<Container> getWorkoutsDayWiseWidgets(BuildContext context) {
    return [
      Container(
        padding: EdgeInsets.all(kSpaceBetweenTwoFields),
        decoration: BoxDecoration(
          color: Theme.of(context).shadowColor,
          border: Border.all(
            color: Theme.of(context).shadowColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          'Test',
          style: getWidgetHeaderStyle(
            Provider.of<ThemeModel>(context).currentTheme,
          ),
        ),
      )
    ];
  }
}
