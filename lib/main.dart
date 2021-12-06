import 'package:fithics_mobile/screens/activity_level_selection/activity_level_selection.dart';
import 'package:fithics_mobile/screens/date_of_birth_selection/date_of_birth_selection.dart';
import 'package:fithics_mobile/screens/food_item_preference_selection/food_item_preference_selection.dart';
import 'package:fithics_mobile/screens/food_type_selection/food_type_selection.dart';
import 'package:fithics_mobile/screens/forgot_password/forgot_password.dart';
import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/screens/goal_selection/goal_selection.dart';
import 'package:fithics_mobile/screens/height_selection/height_selection.dart';
import 'package:fithics_mobile/screens/notification_selection/notification_selection.dart';
import 'package:fithics_mobile/screens/sign_in/sign_in.dart';
import 'package:fithics_mobile/screens/sign_up/sign_up.dart';
import 'package:fithics_mobile/screens/splash/splash.dart';
import 'package:fithics_mobile/screens/workout_days_selection/workout_days_selection.dart';
import 'package:fithics_mobile/screens/workout_type_selection/workout_type_selection.dart';
import 'package:fithics_mobile/shared/store/locale_model.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeModel()),
          ChangeNotifierProvider(create: (_) => LocaleModel()),
          ChangeNotifierProvider(create: (_) => UserPreferenceModel()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateTitle: (BuildContext context) =>
      //     DemoLocalizations.of(context).title,
      locale: Locale(Provider.of<LocaleModel>(context).getCurrentLocale()),
      theme: context.read<ThemeModel>().currentTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Provider.of<LocaleModel>(context).getSupportedLocales(),
      initialRoute: FoodTypeSelection.id,
      routes: {
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp(),
        ForgotPassword.id: (context) => ForgotPassword(),
        Splash.id: (context) => Splash(),
        GenderSelection.id: (context) => GenderSelection(),
        DateOfBirthSelection.id: (context) => DateOfBirthSelection(),
        ActivityLevelSelection.id: (context) => ActivityLevelSelection(),
        HeightSelection.id: (context) => HeightSelection(),
        NotificationSelection.id: (context) => NotificationSelection(),
        GoalSelection.id: (context) => GoalSelection(),
        WorkoutDaysSelection.id: (context) => WorkoutDaysSelection(),
        WorkoutTypeSelection.id: (context) => WorkoutTypeSelection(),
        FoodTypeSelection.id: (context) => FoodTypeSelection(),
        FoodItemPreferenceSelection.id: (context) =>
            FoodItemPreferenceSelection(),
      },
    );
  }
}
