import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/register_verify_email/register_verify_email_bloc.dart';
import 'package:qrosdeal/blocs/register_verify_email/register_verify_email_event.dart';
import 'package:qrosdeal/blocs/register_verify_email/register_verify_email_state.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/otp_input.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/repositories/account_repository.dart';
import 'package:qrosdeal/screens/register/register_create_password/register_create_password_screen.dart';

class RegisterVerifyEmailScreen extends StatefulWidget {
  final String email;
  final String reference;

  const RegisterVerifyEmailScreen({
    super.key,
    required this.email,
    required this.reference,
  });

  @override
  State<RegisterVerifyEmailScreen> createState() => _RegisterVerifyEmailScreenState();
}

class _RegisterVerifyEmailScreenState extends State<RegisterVerifyEmailScreen> {
  final AccountRepository accountRepository = AccountRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterVerifyEmailBloc(
        email: widget.email,
        reference: widget.reference,
      ),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: BlocConsumer<RegisterVerifyEmailBloc, RegisterVerifyEmailState>(
                    listenWhen: (previous, current) => current.isSuccess,
                    listener: (context, state) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterCreatePasswordScreen(
                            email: widget.email,
                            reference: widget.reference,
                          ),
                        ),
                      );
                    },
                    builder: (context, state) {
                      final bloc = context.read<RegisterVerifyEmailBloc>();
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Verification code',
                            style: AppTextStyle.bold32.copyWith(
                              color: AppColor.textPrimary,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Please enter the verification code has been sent to your email address',
                            style: AppTextStyle.normal14.copyWith(
                              color: AppColor.textSecondary,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          OtpInput(
                            onChanged: (otp) {
                              bloc.add(OtpInputChanged(otp));
                            },
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          CustomButton(
                            text: 'Next',
                            onPressed: () {
                              bloc.add(ConfirmButtonPressed());
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
