import 'package:get/get.dart';

import '../domain/entity/cases_model.dart';

// ignore: one_member_abstracts
abstract class IHomeProvider {
  Future<Response<CasesModel>> getCases(String path);
}

class HomeProvider extends GetConnect implements IHomeProvider {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://api.covid19api.com';
    super.onInit();
    httpClient.defaultDecoder = (val) => CasesModel.fromJson(val as Map<String, dynamic>);
  }

  @override
  Future<Response<CasesModel>> getCases(String path) async{
    return await get(path);
  }
}
