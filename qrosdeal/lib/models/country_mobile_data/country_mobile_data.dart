import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_mobile_data.freezed.dart';

@freezed
class CountryMobileData with _$CountryMobileData {
  const factory CountryMobileData({
    @Default("") String name,
    @Default("") String dialCode,
    @Default("") String flag,
    @Default("") String currency,
    @Default("") String isoCountryCode,
    @Default(null) String? currencyCode,
  }) = _CountryMobileData;
}
