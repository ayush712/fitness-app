import 'package:fithics_mobile/screens/food_item_preference_selection/food_item_preference_selection.dart';
import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/image_tile/image_tile.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:fithics_mobile/shared/store/user_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FoodTypeSelection extends StatelessWidget {
  static const String id = 'Food_type_selection';
  @override
  Widget build(BuildContext context) {
    FoodType _selectedFoodType =
        Provider.of<UserPreferenceModel>(context).getFoodType();

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
                AppLocalizations.of(context)!.foodTypeSelectionHeader,
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
                  ...getFoodTypeWidgets(
                      context, _selectedFoodType.foodTypeType),
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
                        Navigator.pushNamed(
                            context, FoodItemPreferenceSelection.id);
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

  Iterable<Container> getFoodTypeWidgets(
      BuildContext context, FoodTypeType selectedFoodType) {
    return Provider.of<UserPreferenceModel>(
      context,
    ).getAllFoodTypes().map<Container>((foodType) {
      return Container(
        child: ImageTile(
          title: foodType.title,
          isSelected: foodType.foodTypeType == selectedFoodType,
          image: foodType.image,
          onTap: () {
            Provider.of<UserPreferenceModel>(context, listen: false)
                .setFoodType(
              foodType.foodTypeType,
            );
          },
        ),
      );
    });
  }
}
