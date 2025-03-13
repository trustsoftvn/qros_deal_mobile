import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_file_response.freezed.dart';
part 'upload_file_response.g.dart';

@freezed
class UploadFileResponse with _$UploadFileResponse {
  const factory UploadFileResponse({
    @Default("") String url,
    @Default("") String key,
    @Default(false) bool isPublic,
  }) = _UploadFileResponse;

  factory UploadFileResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadFileResponseFromJson(json);
}
