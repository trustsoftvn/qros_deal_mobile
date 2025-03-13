import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qrosdeal/blocs/register_user_info/register_user_info_bloc.dart';
import 'package:qrosdeal/blocs/register_user_info/register_user_info_event.dart';
import 'package:qrosdeal/blocs/register_user_info/register_user_info_state.dart';
import 'package:qrosdeal/common/components/custom_button.dart';
import 'package:qrosdeal/common/components/text_field.dart';
import 'package:qrosdeal/common/components/text_field_country_widget.dart';
import 'package:qrosdeal/common/style/app_color.dart';
import 'package:qrosdeal/common/style/app_text_style.dart';
import 'package:qrosdeal/screens/main/main_screen.dart';
import 'package:qrosdeal/utils/string_utils.dart';

class RegisterUserInfoScreen extends StatefulWidget {
  final String reference;

  const RegisterUserInfoScreen({
    super.key,
    required this.reference,
  });

  @override
  State<RegisterUserInfoScreen> createState() => _RegisterUserInfoScreenState();
}

class _RegisterUserInfoScreenState extends State<RegisterUserInfoScreen> {
  late TextEditingController _tfPhoneNumberController;
  late TextEditingController _tfCountryController;

  @override
  void initState() {
    super.initState();
    _tfPhoneNumberController = TextEditingController();
    _tfCountryController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterUserInfoBloc(
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
                  child: BlocConsumer<RegisterUserInfoBloc, RegisterUserInfoState>(
                    listenWhen: (previous, current) => current.isSuccess,
                    listener: (context, state) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    },
                    builder: (context, state) {
                      final bloc = context.read<RegisterUserInfoBloc>();
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Update user information',
                            style: AppTextStyle.bold32.copyWith(
                              color: AppColor.textPrimary,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Please fill in your information',
                            style: AppTextStyle.normal14.copyWith(
                              color: AppColor.textSecondary,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          CustomTextField(
                            label: 'Full name',
                            onChanged: (text) {
                              bloc.add(FullNameInputChanged(text));
                            },
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          CustomButton(
                            text: 'Next',
                            isDisabled: state.fullName.isEmpty,
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

  Widget _getSelectCountry() {
    final bloc = context.read<RegisterUserInfoBloc>();

    return GestureDetector(
      onTap: () {
        bloc.add(CountrySelected());
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Country',
          ),
          BlocConsumer<RegisterUserInfoBloc, RegisterUserInfoState>(
            listenWhen: (prev, current) => prev.countryMobile != current.countryMobile,
            listener: (context, state) {
              if (state.countryMobile != null) {
                _tfCountryController.text = state.countryMobile!.name;
              }
            },
            buildWhen: (prev, current) => prev.countryMobile != current.countryMobile,
            builder: (context, state) => TextField(
              controller: _tfCountryController,
              textAlignVertical: TextAlignVertical.bottom,
              textInputAction: TextInputAction.next,
              enabled: false,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                counterText: "",
                prefixIcon: state.countryMobile != null
                    ? Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Image.asset(state.countryMobile!.flag.getFlagAssetsPath()),
                      )
                    : null,
                prefixIconConstraints: const BoxConstraints(maxWidth: 36),
                suffixIcon: const Icon(Icons.arrow_downward),
                suffixIconConstraints: const BoxConstraints(maxWidth: 24),
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.textSecondary, width: 1)),
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.textSecondary, width: 1)),
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.error, width: 2)),
              ),
              style: AppTextStyle.normal14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPhoneNumberInput() {
    final bloc = context.read<RegisterUserInfoBloc>();

    return BlocBuilder<RegisterUserInfoBloc, RegisterUserInfoState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldCountryWidget(
              controller: _tfPhoneNumberController,
              hint: 'Phone number',
              hasSelectedCountry: false,
              dialCode: state.dialingCode,
              errorMes: state.errorPhone,
              onTextChanged: (text) {
                bloc.add(PhoneInputChanged(text));
              },
              onClickPrefix: () {
                bloc.add(DialingCodeSelected());
              },
            ),
          ],
        );
      },
    );
  }
}
