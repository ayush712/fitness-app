import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/text_field_wrapper/text_field_wrapper.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/services/validators.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//import 'package:modal_progress_hud/modal_progress_hud.dart';

class ForgotPassword extends StatelessWidget {
  static const String id = 'forgot_password';
  final showSpinner = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";
    String confirmPassword = "";
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/forgot_password.jpeg'),
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
                    AppLocalizations.of(context)!.forgotPassword,
                    style: getSubHeaderStyle(
                        Provider.of<ThemeModel>(context).currentTheme),
                  ),
                  SizedBox(
                    height: kSpaceBetweenTwoFields * 2,
                  ),
                  TextFieldWrapper(
                    placeholder: AppLocalizations.of(context)!.email,
                    validator: emailValidator(context),
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
                    validator: passwordValidator(context),
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: kSpaceBetweenTwoFields,
                  ),
                  TextFieldWrapper(
                    placeholder: AppLocalizations.of(context)!.reenterPassword,
                    validator: (val) => confirmPasswordValidator(
                        context: context, text1: password, text2: val),
                    obscureText: true,
                    onChanged: (value) {
                      confirmPassword = value;
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
                              print(confirmPassword);
                            }
                          },
                          title: AppLocalizations.of(context)!.resetPassword),
                      SizedBox(
                        height: kSpaceBetweenTwoFields * 2,
                      ),
                    ],
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
