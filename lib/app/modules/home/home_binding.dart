import 'package:get/get.dart';
import 'home_controller.dart';
import '../ticket/ticket_controller.dart';
import '../gallery/gallery_controller.dart';
import '../about/about_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // Register other controllers used by child pages so they are available
    // when HomeView includes those pages directly.
    Get.lazyPut<TicketController>(() => TicketController());
    Get.lazyPut<GalleryController>(() => GalleryController());
    Get.lazyPut<AboutController>(() => AboutController());
  }
}
