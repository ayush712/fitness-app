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

class SignUp extends StatefulWidget {
  static const String id = 'sign_up';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showSpinner = false;
  String name = "";
  String email = "";
  String password = "";
  bool passwordObscured = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                      getNameField(),
                      SizedBox(
                        height: kSpaceBetweenTwoFields,
                      ),
                      getEmailField(),
                      SizedBox(
                        height: kSpaceBetweenTwoFields,
                      ),
                      getPasswordField(),
                      SizedBox(
                        height: kSpaceBetweenTwoFields * 2,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          getButton(),
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

  TextFieldWrapper getNameField() {
    return TextFieldWrapper(
      onChanged: (value) {
        name = value;
      },
      keyboardType: TextInputType.name,
      autofocus: true,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.name,
      ),
    );
  }

  TextFieldWrapper getPasswordField() {
    return TextFieldWrapper(
      obscureText: passwordObscured,
      onChanged: (value) {
        password = value;
      },
      keyboardType: TextInputType.text,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.password,
        suffixIcon: IconButton(
          icon: Icon(
            passwordObscured ? Icons.visibility_off : Icons.visibility,
            color: Theme.of(context).primaryColorLight,
          ),
          onPressed: () {
            setState(() {
              passwordObscured = !passwordObscured;
            });
          },
        ),
      ),
    );
  }

  TextFieldWrapper getEmailField() {
    return TextFieldWrapper(
      onChanged: (value) {
        email = value;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.email,
      ),
    );
  }

  ButtonWrapper getButton() {
    return ButtonWrapper(
      buttonType: ButtonType.ElevatedButton,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          print(email);
          print(password);
          print(name);
        }
      },
      title: AppLocalizations.of(context)!.createAccount,
    );
  }
}
