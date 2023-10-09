import 'package:fk_sample/features/data/detailsProvider.dart';

class DetailsRepository implements IDetailsRepository {
  IDetailsProvider provider;

  DetailsRepository({
    required this.provider,
  });

  @override
  Future<void> changePassword() async {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<void> changeMobile() async {
    // TODO: implement changeMobile
    throw UnimplementedError();
  }


  @override
  Future<Map<String, String>> getDetails() async {
    Map<String, String> responseData = {};
    throw UnimplementedError();

  }


}

abstract class IDetailsRepository {
  Future<void> changePassword();
  Future<void> changeMobile();
  Future<Map<String, String>> getDetails();
}
