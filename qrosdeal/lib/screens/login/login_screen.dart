import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/login/login_bloc.dart';
import 'package:qrosdeal/blocs/login/login_event.dart';
import 'package:qrosdeal/blocs/login/login_state.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/core/base_stateless_widget.dart';
import 'package:qrosdeal/screens/main/main_screen.dart';
import 'package:qrosdeal/screens/register/register_user_type/register_user_type.dart';

class LoginScreen extends BaseStatelessWidget<LoginBloc> {
  const LoginScreen({super.key});

  @override
  Widget buildWidget(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
              if (state.isSuccess) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              }
            }, builder: (context, state) {
              final bloc = context.read<LoginBloc>();
              return Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: AppTextStyle.bold32.copyWith(
                            color: AppColor.textPrimary,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Please log in to continue',
                          style: AppTextStyle.normal14.copyWith(
                            color: AppColor.textSecondary,
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        CustomTextField(
                          label: 'Email',
                          inputType: TextInputType.emailAddress,
                          onChanged: (value) {
                            bloc.add(EmailInputChanged(value));
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CustomTextField(
                          label: 'Password',
                          obscureText: true,
                          onChanged: (value) {
                            bloc.add(PasswordInputChanged(value));
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        CustomButton(
                          text: 'Log in',
                          onPressed: () {
                            bloc.add(LoginButtonPressed());
                          },
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: AppTextStyle.normal14.copyWith(color: AppColor.textSecondary),
                        children: [
                          TextSpan(
                              text: "Sign up",
                              style: AppTextStyle.bold14.copyWith(color: AppColor.primary),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const RegisterUserType()),
                                  );
                                })
                        ]),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
