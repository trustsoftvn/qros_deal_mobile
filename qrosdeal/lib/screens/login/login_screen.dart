import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qrosdeal/blocs/login/login_bloc.dart';
import 'package:qrosdeal/blocs/login/login_event.dart';
import 'package:qrosdeal/blocs/login/login_state.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/core/base_stateless_widget.dart';
import 'package:qrosdeal/repositories/app_data_repository.dart';
import 'package:qrosdeal/screens/main/main_screen.dart';
import 'package:qrosdeal/screens/register/register_user_type/register_user_type.dart';
import 'package:qrosdeal/screens/splash/splash_screen.dart';

class LoginScreen extends BaseStatelessWidget<LoginBloc> {
  final bool hasAccessToken;
  final appDataRepository = GetIt.instance.get<AppDataRepository>();

  LoginScreen({super.key, this.hasAccessToken = false});

  @override
  Widget buildWidget(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
        backgroundColor: AppColor.bgPrimary,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child:
                BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
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
                        SizedBox(
                          height: hasAccessToken ? 10 : 32,
                        ),
                        hasAccessToken
                            ? Text(appDataRepository.user?.email ?? "",
                                style: AppTextStyle.normal14)
                            : CustomTextField(
                                label: 'Email',
                                inputType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  bloc.add(EmailInputChanged(value));
                                },
                              ),
                        const SizedBox(
                          height: 8,
                        ),
                        hasAccessToken
                            ? CustomTextField(
                                label: 'PIN code',
                                obscureText: true,
                                inputType: TextInputType.number,
                                maxLength: 6,
                                onChanged: (value) {
                                  bloc.add(PinCodeInputChange(value));
                                })
                            : CustomTextField(
                                label: 'Password',
                                obscureText: true,
                                onChanged: (value) {
                                  bloc.add(PasswordInputChanged(value));
                                },
                              ),
                        const SizedBox(
                          height: 32,
                        ),
                        _getLoginButton(bloc, state)
                      ],
                    ),
                  ),
                  _getBottomTextView(context),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _getLoginButton(LoginBloc bloc, LoginState state) {
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return hasAccessToken
        ? CustomButton(
            text: 'Log in',
            onPressed: () {
              bloc.add(PinLoginButtonPressed());
            },
            isDisabled: state.isLoginButtonDisabled,
          )
        : CustomButton(
            text: 'Log in',
            onPressed: () {
              bloc.add(LoginButtonPressed());
            },
            isDisabled: state.isLoginButtonDisabled,
          );
  }

  Widget _getBottomTextView(BuildContext context) {
    return RichText(
        text: !hasAccessToken
            ? TextSpan(
                text: "Don't have an account? ",
                style: AppTextStyle.normal14
                    .copyWith(color: AppColor.textSecondary),
                children: [
                    TextSpan(
                        text: "Sign up",
                        style: AppTextStyle.bold14
                            .copyWith(color: AppColor.primary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterUserType()),
                            );
                          })
                  ])
            : TextSpan(
                text: "Not your account? ",
                style: AppTextStyle.normal14
                    .copyWith(color: AppColor.textSecondary),
                children: [
                    TextSpan(
                        text: "Sign out",
                        style: AppTextStyle.bold14
                            .copyWith(color: AppColor.primary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            await appDataRepository.clearData();

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SplashScreen()),
                            );
                          })
                  ]));
  }
}
