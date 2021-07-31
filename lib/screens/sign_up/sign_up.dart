import 'package:fithics_mobile/screens/sign_in/sign_in.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/signup_signin_redirection.dart/signup_signin_redirection.dart';
import 'package:fithics_mobile/shared/components/text_field_wrapper/text_field_wrapper.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//import 'package:modal_progress_hud/modal_progress_hud.dart';
class SignUp extends StatelessWidget {
  static const String id = 'sign_up';
  final showSpinner = false;
  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    String password = "";
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      Image.asset('assets/images/sign_up.jpeg'),
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
                        AppLocalizations.of(context)!.signUp,
                        style: getSubHeaderStyle(
                            Provider.of<ThemeModel>(context).currentTheme),
                      ),
                      SizedBox(
                        height: kSpaceBetweenTwoFields * 2,
                      ),
                      TextFieldWrapper(
                        placeholder: AppLocalizations.of(context)!.name,
                        onChanged: (value) {
                          name = value;
                        },
                        keyboardType: TextInputType.name,
                        autofocus: true,
                      ),
                      SizedBox(
                        height: kSpaceBetweenTwoFields,
                      ),
                      TextFieldWrapper(
                        placeholder: AppLocalizations.of(context)!.email,
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: kSpaceBetweenTwoFields,
                      ),
                      TextFieldWrapper(
                        placeholder: AppLocalizations.of(context)!.password,
                        obscureText: true,
                        onChanged: (value) {
                          password = value;
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
                              buttonType: ButtonType.ElevatedButton,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  print(email);
                                  print(password);
                                  print(name);
                                }
                              },
                              title:
                                  AppLocalizations.of(context)!.createAccount),
                          SizedBox(
                            height: kSpaceBetweenTwoFields * 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: kSpaceBetweenTwoFields * 2),
                    child: SignUpSignInRedirection(
                      text: AppLocalizations.of(context)!.haveAccount,
                      linkText: AppLocalizations.of(context)!.signIn,
                      redirectToLink: SignIn.id,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
