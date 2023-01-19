

import 'package:get_x_demo/demo2/pages/home/domain/entity/cases_model.dart';

abstract class IHomeRepository{
  Future<CasesModel> getCases();
}