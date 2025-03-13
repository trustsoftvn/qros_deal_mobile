import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/register_create_pin/register_create_pin_bloc.dart';
import 'package:qrosdeal/blocs/register_create_pin/register_create_pin_event.dart';
import 'package:qrosdeal/blocs/register_create_pin/register_create_pin_state.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/screens/register/register_user_info/register_user_info_screen.dart';

class RegisterCreatePinScreen extends StatefulWidget {
  final String email;
  final String reference;

  const RegisterCreatePinScreen({
    super.key,
    required this.email,
    required this.reference,
  });

  @override
  State<RegisterCreatePinScreen> createState() => _RegisterCreatePinScreenState();
}

class _RegisterCreatePinScreenState extends State<RegisterCreatePinScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCreatePinBloc(
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
                  child: BlocConsumer<RegisterCreatePinBloc, RegisterCreatePinState>(
                    listenWhen: (previous, current) => current.isSuccess,
                    listener: (context, state) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterUserInfoScreen(
                            reference: widget.reference,
                          ),
                        ),
                      );
                    },
                    builder: (context, state) {
                      final bloc = context.read<RegisterCreatePinBloc>();
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
                            label: 'Your PIN',
                            maxLength: 6,
                            obscureText: true,
                            inputType: TextInputType.number,
                            onChanged: (text) {
                              bloc.add(YourPinCodeInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomTextField(
                            label: 'Confirm your PIN',
                            maxLength: 6,
                            obscureText: true,
                            inputType: TextInputType.number,
                            onChanged: (text) {
                              bloc.add(ConfirmPinCodeInputChanged(text));
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
