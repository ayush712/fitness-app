import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/screens/goal_selection/goal_selection.dart';
import 'package:fithics_mobile/screens/workout_type_selection/workout_type_selection.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/text_tile/text_tile.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FoodItemPreferenceSelection extends StatelessWidget {
  static const String id = 'food_item_selection';
  @override
  Widget build(BuildContext context) {
    List<String> _selectedProteinPreferences =
        Provider.of<UserPreferenceModel>(context).getProteinPreferences();
    List<String> _selectedCarbPreferences =
        Provider.of<UserPreferenceModel>(context).getCarbPreferences();
    List<String> _selectedFatPreferences =
        Provider.of<UserPreferenceModel>(context).getFatPreferences();

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
                  AppLocalizations.of(context)!.foodPreferenceSelectionHeader,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  AppLocalizations.of(context)!
                      .foodPreferenceSelectionDescription,
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 4,
                ),
                Text(
                  AppLocalizations.of(context)!.proteinPreferences,
                  textAlign: TextAlign.center,
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
                    ...getProteinPreferencesWidgets(
                        context, _selectedProteinPreferences),
                  ],
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                Text(
                  AppLocalizations.of(context)!.carbPreferences,
                  textAlign: TextAlign.center,
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
                    ...getCarbPreferencesWidgets(
                        context, _selectedCarbPreferences),
                  ],
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                Text(
                  AppLocalizations.of(context)!.fatPreferences,
                  textAlign: TextAlign.center,
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
                    ...getFatPreferencesWidgets(
                        context, _selectedFatPreferences),
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
                        title:
                            AppLocalizations.of(context)!.createNutritionPlan,
                      ),
                    ),
                  ],
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

  Iterable<Container> getProteinPreferencesWidgets(
      BuildContext context, List<String> selectedPreferences) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllProteinPreferences().map<Container>((item) {
      bool isSelected = selectedPreferences.any((element) => element == item);
      return Container(
        child: TextTile(
          title: item.toString(),
          isSelected: isSelected,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setProteinPreferences(item, !isSelected);
          },
        ),
      );
    });
  }

  Iterable<Container> getCarbPreferencesWidgets(
      BuildContext context, List<String> selectedPreferences) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllCarbPreferences().map<Container>((item) {
      bool isSelected = selectedPreferences.any((element) => element == item);
      return Container(
        child: TextTile(
          title: item.toString(),
          isSelected: isSelected,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setCarbPreferences(item, !isSelected);
          },
        ),
      );
    });
  }

  Iterable<Container> getFatPreferencesWidgets(
      BuildContext context, List<String> selectedPreferences) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllFatPreferences().map<Container>((item) {
      bool isSelected = selectedPreferences.any((element) => element == item);
      return Container(
        child: TextTile(
          title: item.toString(),
          isSelected: isSelected,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setFatPreferences(item, !isSelected);
          },
        ),
      );
    });
  }
}
