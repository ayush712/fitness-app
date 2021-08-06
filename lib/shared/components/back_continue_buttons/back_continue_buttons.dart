import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BackContinueButtons extends StatelessWidget {
  final previousButtonTap;
  final nextButtonTap;
  final bool showPreviousButton;
  final bool showNextButton;
  BackContinueButtons(
      {this.showPreviousButton = true,
      this.showNextButton = true,
      this.previousButtonTap,
      this.nextButtonTap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: showPreviousButton
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.end,
      children: [
        showPreviousButton
            ? ButtonWrapper(
                buttonType: ButtonType.NoBorderButton,
                onPressed: previousButtonTap,
                title: AppLocalizations.of(context)!.previous)
            : Container(),
        showNextButton
            ? ButtonWrapper(
                onPressed: nextButtonTap,
                title: AppLocalizations.of(context)!.next,
              )
            : Container(),
      ],
    );
  }
}
