import 'package:fk_sample/models/apiResponse.dart';

class DetailsProvider extends IDetailsProvider {

  DetailsProvider() {}

  @override
  Future<ApiResponse> changePassword() async {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse> changeMobile() async {
    // TODO: implement changeMobile
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse> getDetails() async {
    String endPointPath = '';

    throw UnimplementedError();
  }


}

abstract class IDetailsProvider {
  Future<ApiResponse> changePassword();
  Future<ApiResponse> changeMobile();
  Future<ApiResponse> getDetails();
}
