import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/components/text_field_wrapper/text_field_wrapper.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/services/validators.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//import 'package:modal_progress_hud/modal_progress_hud.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'forgot_password';
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool showSpinner = false;
  String email = "";
  String password = "";
  String confirmPassword = "";
  bool passwordObscured = true;
  bool confirmPasswordObscured = true;
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
                    getEmailField(),
                    SizedBox(
                      height: kSpaceBetweenTwoFields,
                    ),
                    getPasswordField(),
                    SizedBox(
                      height: kSpaceBetweenTwoFields,
                    ),
                    getConfirmPasswordField(),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFieldWrapper getConfirmPasswordField() {
    return TextFieldWrapper(
      validator: (val) => confirmPasswordValidator(
        context: context,
        text1: password,
        text2: val,
      ),
      obscureText: confirmPasswordObscured,
      onChanged: (value) {
        confirmPassword = value;
      },
      keyboardType: TextInputType.text,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.reenterPassword,
        suffixIcon: IconButton(
          icon: Icon(
            confirmPasswordObscured ? Icons.visibility : Icons.visibility_off,
            //color: Theme.of(context).primaryColorLight,
          ),
          onPressed: () {
            setState(() {
              confirmPasswordObscured = !confirmPasswordObscured;
            });
          },
        ),
      ),
    );
  }

  TextFieldWrapper getPasswordField() {
    return TextFieldWrapper(
      validator: passwordValidator(context),
      obscureText: passwordObscured,
      onChanged: (value) {
        password = value;
      },
      keyboardType: TextInputType.text,
      decoration: kTextFieldInputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.password,
        suffixIcon: IconButton(
          icon: Icon(
            passwordObscured ? Icons.visibility : Icons.visibility_off,
            //color: Theme.of(context).primaryColorLight,
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
      buttonType: ButtonType.ElevatedButton,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          print(email);
          print(password);
          print(confirmPassword);
        }
      },
      title: AppLocalizations.of(context)!.resetPassword,
    );
  }
}
