import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/screens/login/login_screen.dart';
import 'package:qrosdeal/screens/register/register_email/register_email.dart';

class RegisterUserType extends StatefulWidget {
  const RegisterUserType({super.key});

  @override
  State<RegisterUserType> createState() => _RegisterUserTypeState();
}

class _RegisterUserTypeState extends State<RegisterUserType> {
  String? userType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register',
                      style: AppTextStyle.bold32.copyWith(
                        color: AppColor.textPrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Please choose your account type',
                      style: AppTextStyle.normal14.copyWith(
                        color: AppColor.textSecondary,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    _option('PERSONAL', 'Personal'),
                    _option('ORGANIZATION', 'Organization'),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      text: 'Next',
                      onPressed: () {
                        if (userType != null) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterEmail(
                                userType: userType!,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                    text: "Already have an account? ",
                    style: AppTextStyle.normal14
                        .copyWith(color: AppColor.textSecondary),
                    children: [
                      TextSpan(
                          text: "Log in",
                          style: AppTextStyle.bold14
                              .copyWith(color: AppColor.primary),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            })
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _option(String value, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          userType = value;
        });
      },
      child: Container(
        color: AppColor.bgPrimary,
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: userType,
              activeColor: AppColor.primary,
              onChanged: (String? value) {
                setState(() {
                  if (value != null) {
                    userType = value;
                  }
                });
              },
            ),
            Text(
              title,
              style: AppTextStyle.normal14,
            ),
          ],
        ),
      ),
    );
  }
}
