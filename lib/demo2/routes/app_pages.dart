import 'package:get/get.dart';
import 'package:get_x_demo/demo2/pages/home/bindings/home_binding.dart';
import 'package:get_x_demo/demo2/pages/home/presentation/views/country_view.dart';
import 'package:get_x_demo/demo2/pages/home/presentation/views/details_view.dart';
import 'package:get_x_demo/demo2/pages/home/presentation/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: Routes.COUNTRY,
          page: () => CountryView(),
          children: [
            GetPage(
              name: Routes.DETAILS,
              page: () => DetailsView(),
            ),
          ],
        ),
      ]
    )
  ];
}
