import 'package:freezed_annotation/freezed_annotation.dart';

part 'pref_user.freezed.dart';
part 'pref_user.g.dart';

@freezed
class PrefUser with _$PrefUser {
  const factory PrefUser({
    @JsonKey() @Default("") String email,
    @JsonKey() @Default("") String fullName,
    @JsonKey() @Default("") String userRef,
    @JsonKey() @Default(null) String? lastLogin,
  }) = _PrefUser;

  factory PrefUser.fromJson(Map<String, dynamic> json) =>
      _$PrefUserFromJson(json);
}
