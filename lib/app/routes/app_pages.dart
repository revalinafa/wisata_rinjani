import 'package:get/get.dart';
import '../modules/home/home_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/detail/detail_view.dart';
import '../modules/detail/detail_binding.dart';
import '../modules/ticket/ticket_view.dart';
import '../modules/ticket/ticket_binding.dart';
import '../modules/gallery/gallery_view.dart';
import '../modules/gallery/gallery_binding.dart';
import '../modules/about/about_view.dart';
import '../modules/about/about_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: Routes.TICKET,
      page: () => TicketView(),
      binding: TicketBinding(),
    ),
    GetPage(
      name: Routes.GALLERY,
      page: () => GalleryView(),
      binding: GalleryBinding(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
  ];
}
