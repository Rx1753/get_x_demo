import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get_x_demo/demo2/pages/home/domain/adapters/repository_adapter.dart';
import 'package:get_x_demo/demo2/pages/home/domain/entity/cases_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});

  final IHomeRepository homeRepository;

  CasesModel? casesModel;
  var isDataLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    getApiData();
  }

  getApiData() async {
    isDataLoading(true);
    casesModel = await homeRepository.getCases();
    debugPrint('Case model filled');
    isDataLoading(false);
  }

  Country getCountryById(String id) {
    final index = int.tryParse(id);
    return index != null
        ? casesModel!.countries[index]
        : casesModel!.countries.first;
  }
}
