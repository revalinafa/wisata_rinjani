import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../about/about_view.dart';
import '../gallery/gallery_view.dart';
import '../ticket/ticket_view.dart';
import '../../widgets/destination_card.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> _pages = [
    _HomeContent(),
    TicketView(),
    GalleryView(),
    AboutView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wisata Rinjani',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFB87C4C), Color(0xFFC4A484)],
                ),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white.withOpacity(0.9),
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: Color(0xFFB87C4C),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Revalina Fidiya Anugrah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 1),
                            blurRadius: 3,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'H1D023011',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 8),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home_outlined,
                      color: Color(0xFFB87C4C),
                    ),
                    title: Text('Beranda'),
                    onTap: () {
                      Get.back();
                      controller.changePage(0);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.confirmation_number_outlined,
                      color: Color(0xFFB87C4C),
                    ),
                    title: Text('Tiket & Harga'),
                    onTap: () {
                      Get.back();
                      controller.changePage(1);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.photo_library_outlined,
                      color: Color(0xFFB87C4C),
                    ),
                    title: Text('Galeri Foto'),
                    onTap: () {
                      Get.back();
                      controller.changePage(2);
                    },
                  ),
                  Divider(color: Color(0xFFC4A484).withOpacity(0.3)),
                  ListTile(
                    leading: Icon(Icons.info_outline, color: Color(0xFFB87C4C)),
                    title: Text('Tentang Aplikasi'),
                    onTap: () {
                      Get.back();
                      controller.changePage(3);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => _pages[controller.currentIndex.value]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changePage,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            selectedItemColor: Color(0xFFB87C4C),
            unselectedItemColor: Color(0xFFC4A484).withOpacity(0.7),
            showUnselectedLabels: true,
            selectedIconTheme: IconThemeData(size: 28),
            unselectedIconTheme: IconThemeData(size: 24),
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(fontSize: 11),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
              BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number),
                label: 'Tiket',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo_library),
                label: 'Galeri',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        DestinationCard(
          title: 'Danau Segara Anak',
          description: 'Danau kaldera yang terletak di ketinggian 2.000 mdpl',
          imagePath: 'assets/images/segara_anak.jpg',
          onTap: () => Get.toNamed(
            '/detail',
            arguments: {
              'title': 'Danau Segara Anak',
              'description':
                  'Danau kaldera yang indah terletak di ketinggian 2.000 mdpl dengan pemandangan yang menakjubkan',
              'imagePath': 'assets/images/segara_anak.jpg',
            },
          ),
        ),
        DestinationCard(
          title: 'Pos Pelawangan',
          description: 'Pos pendakian dengan pemandangan matahari terbit',
          imagePath: 'assets/images/pelawangan.jpg',
          onTap: () => Get.toNamed(
            '/detail',
            arguments: {
              'title': 'Pos Pelawangan',
              'description':
                  'Pos pendakian favorit para pendaki untuk menikmati sunrise dengan view Gunung Rinjani yang memukau',
              'imagePath': 'assets/images/pelawangan.jpg',
            },
          ),
        ),
        // Add more destination cards here
      ],
    );
  }
}
