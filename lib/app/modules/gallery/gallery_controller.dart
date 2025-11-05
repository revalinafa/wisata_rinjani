import 'package:get/get.dart';

class GalleryController extends GetxController {
  final images = [
    {
      'path': 'assets/images/gallery1.jpg',
      'title': 'Sunrise di Puncak Rinjani',
    },
    {'path': 'assets/images/gallery2.jpg', 'title': 'Danau Segara Anak'},
    {'path': 'assets/images/gallery3.jpg', 'title': 'Air Terjun Sendang Gile'},
    {
      'path': 'assets/images/gallery4.jpg',
      'title': 'Pemandangan dari Pelawangan',
    },
  ].obs;
}
