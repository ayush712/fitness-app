import 'package:fithics_mobile/screens/forgot_password/forgot_password.dart';
import 'package:fithics_mobile/screens/gender_selection/gender_selection.dart';
import 'package:fithics_mobile/screens/sign_in/components/divider_text.dart';
import 'package:fithics_mobile/screens/sign_up/sign_up.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/signup_signin_redirection.dart/signup_signin_redirection.dart';
import 'package:fithics_mobile/shared/components/text_field_wrapper/text_field_wrapper.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/services/validators.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//import 'package:modal_progress_hud/modal_progress_hud.dart';

class SignIn extends StatefulWidget {
  static const String id = 'sign_in';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool showSpinner = false;
  String email = "";
  String password = "";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding:
                EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
            children: [
              Form(
                key: _formKey,
                child: Column(
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
                      padding: const EdgeInsets.only(
                          bottom: kSpaceBetweenTwoFields * 2),
                      child: SignUpSignInRedirection(
                        text: AppLocalizations.of(context)!.noAccount,
                        linkText: AppLocalizations.of(context)!.signUp,
                        redirectToLink: SignUp.id,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFieldWrapper getPasswordField() {
    return TextFieldWrapper(
      validator: requiredValidator(
          AppLocalizations.of(context)!.passwordRequiredError),
      obscureText: true,
      onChanged: (value) {
        password = value;
      },
      keyboardType: TextInputType.text,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.password,
        suffix: GestureDetector(
          child: Text(
            AppLocalizations.of(context)!.forgot,
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.w600,
              fontSize: kXSmallFontSize,
            ),
          ),
          onTap: () => {
            Navigator.pushNamed(
              context,
              ForgotPassword.id,
            ),
          },
        ),
      ),
    );
  }

  TextFieldWrapper getEmailField() {
    return TextFieldWrapper(
      validator: emailValidator(context),
      onChanged: (value) {
        email = value;
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.email,
      ),
    );
  }

  ButtonWrapper getButton() {
    return ButtonWrapper(
      buttonType: ButtonType.OutlinedButton,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          print(email);
          print(password);
          Navigator.pushNamed(context, GenderSelection.id);
        }
      },
      title: AppLocalizations.of(context)!.signIn,
    );
  }
}
