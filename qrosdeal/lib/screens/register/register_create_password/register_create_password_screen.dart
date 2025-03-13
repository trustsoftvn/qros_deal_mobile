import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/register_create_password/register_create_password_bloc.dart';
import 'package:qrosdeal/blocs/register_create_password/register_create_password_event.dart';
import 'package:qrosdeal/blocs/register_create_password/register_create_password_state.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/screens/register/register_create_pin/register_create_pin_screen.dart';

class RegisterCreatePasswordScreen extends StatefulWidget {
  final String email;
  final String reference;

  const RegisterCreatePasswordScreen({
    super.key,
    required this.email,
    required this.reference,
  });

  @override
  State<RegisterCreatePasswordScreen> createState() => _RegisterCreatePasswordScreenState();
}

class _RegisterCreatePasswordScreenState extends State<RegisterCreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCreatePasswordBloc(
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
                  child: BlocConsumer<RegisterCreatePasswordBloc, RegisterCreatePasswordState>(
                    listenWhen: (previous, current) => current.isSuccess,
                    listener: (context, state) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterCreatePinScreen(
                            email: widget.email,
                            reference: widget.reference,
                          ),
                        ),
                      );
                    },
                    builder: (context, state) {
                      final bloc = context.read<RegisterCreatePasswordBloc>();
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Set up Password',
                            style: AppTextStyle.bold32.copyWith(
                              color: AppColor.textPrimary,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Creating strong password is essential to prevent others from breaking into your account',
                            style: AppTextStyle.normal14.copyWith(
                              color: AppColor.textSecondary,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          CustomTextField(
                            label: 'Your password',
                            obscureText: true,
                            onChanged: (text) {
                              bloc.add(YourPassInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextField(
                            label: 'Confirm your password',
                            obscureText: true,
                            onChanged: (text) {
                              bloc.add(ConfirmPassInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          CustomButton(
                            text: 'Next',
                            isDisabled: !state.isEnableVerifyButton,
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
