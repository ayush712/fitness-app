import 'package:fithics_mobile/screens/sign_in/components/divider_text.dart';
import 'package:fithics_mobile/screens/sign_up/sign_up.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/signup_signin_redirection.dart/signup_signin_redirection.dart';
import 'package:fithics_mobile/shared/components/text_field_wrapper/text_field_wrapper.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//import 'package:modal_progress_hud/modal_progress_hud.dart';
const double kSpaceBetweenTwoFields = 15.0;

class SignIn extends StatelessWidget {
  static const String id = 'sign_in';
  final showSpinner = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Image.asset('assets/images/sign_in.jpeg'),
                    SizedBox(
                      height: kSpaceBetweenTwoFields,
                    ),
                    Text(
                      AppLocalizations.of(context)!.welcomeText,
                      style: getHeaderStyle(
                          Provider.of<ThemeModel>(context).currentTheme),
                    ),
                    SizedBox(
                      height: kSpaceBetweenTwoFields,
                    ),
                    Text(
                      AppLocalizations.of(context)!.signIn,
                      style: getSubHeaderStyle(
                          Provider.of<ThemeModel>(context).currentTheme),
                    ),
                    SizedBox(
                      height: kSpaceBetweenTwoFields * 2,
                    ),
                    TextFieldWrapper(
                      placeholder: AppLocalizations.of(context)!.email,
                      onChanged: (value) {
                        //email = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                    ),
                    SizedBox(
                      height: kSpaceBetweenTwoFields,
                    ),
                    TextFieldWrapper(
                      placeholder: AppLocalizations.of(context)!.password,
                      obscureText: true,
                      onChanged: (value) {
                        //email = value;
                      },
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: kSpaceBetweenTwoFields * 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ButtonWrapper(
                            onPressed: () {},
                            title: AppLocalizations.of(context)!.signIn),
                        SizedBox(
                          height: kSpaceBetweenTwoFields * 2,
                        ),
                        DividerText(
                          text: AppLocalizations.of(context)!.or,
                        ),
                        // SizedBox(
                        //   height: kSpaceBetweenTwoFields * 2,
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: kSpaceBetweenTwoFields * 2,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: kSpaceBetweenTwoFields * 2),
                  child: SignUpSignInRedirection(
                    text: AppLocalizations.of(context)!.noAccount,
                    linkText: AppLocalizations.of(context)!.signUp,
                    redirectToLink: SignUp.id,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
