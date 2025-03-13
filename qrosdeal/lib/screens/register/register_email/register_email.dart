import 'package:flutter/material.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/repositories/account_repository.dart';
import 'package:qrosdeal/screens/register/register_verify_email/register_verify_email_screen.dart';

class RegisterEmail extends StatefulWidget {
  final String userType;

  const RegisterEmail({
    super.key,
    required this.userType,
  });

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  String email = '';
  final AccountRepository accountRepository = AccountRepository();

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
                      'Please enter your email address to register',
                      style: AppTextStyle.normal14.copyWith(
                        color: AppColor.textSecondary,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomTextField(
                      label: 'Email',
                      inputType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomButton(
                      text: 'Next',
                      onPressed: () {
                        handleSubmit();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> handleSubmit() async {
    final ref = await accountRepository.signUpVerifyEmail(email, false);
    if (ref.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterVerifyEmailScreen(
            email: email,
            reference: ref,
          ),
        ),
      );
    }
  }
}
