//import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/screens/gender_selection/components/a_gender.dart';
import 'package:fithics_mobile/shared/components/back_continue_buttons/back_continue_buttons.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';

class GenderSelection extends StatelessWidget {
  static const String id = 'gender_selection';
  @override
  Widget build(BuildContext context) {
    Gender _selectedGender =
        Provider.of<UserPreferenceModel>(context).getGender();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
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
                      height: kSpaceBetweenTwoFields * 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: AGender(
                            onTap: () {
                              Provider.of<UserPreferenceModel>(context,
                                      listen: false)
                                  .setGender(Gender.Male);
                            },
                            text: AppLocalizations.of(context)!.male,
                            imagePath: 'assets/images/gender_male.png',
                            isSelected: _selectedGender == Gender.Male,
                          ),
                        ),
                        SizedBox(
                          width: kSpaceBetweenTwoFields,
                        ),
                        Expanded(
                          child: AGender(
                            onTap: () {
                              Provider.of<UserPreferenceModel>(context,
                                      listen: false)
                                  .setGender(Gender.Female);
                            },
                            text: AppLocalizations.of(context)!.female,
                            imagePath: 'assets/images/gender_female.png',
                            isSelected: _selectedGender == Gender.Female,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  BackContinueButtons(
                    showPreviousButton: false,
                    // previousButtonTap: () {},
                    nextButtonTap: () {},
                  ),
                  SizedBox(
                    height: kSpaceBetweenTwoFields * 2,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
