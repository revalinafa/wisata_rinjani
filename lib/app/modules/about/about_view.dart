import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tentang Aplikasi',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB87C4C),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Icon(
                          Icons.landscape,
                          size: 80,
                          color: Color(0xFFB87C4C),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Wisata Rinjani',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFB87C4C),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Versi ${controller.appVersion}',
                        style: TextStyle(color: Color(0xFFC4A484)),
                      ),
                      SizedBox(height: 16),
                      Text(
                        controller.appDescription,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.email, color: Color(0xFFB87C4C)),
                        title: Text('Kontak'),
                        subtitle: Text('info@wisatarinjani.com'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone, color: Color(0xFFB87C4C)),
                        title: Text('Telepon'),
                        subtitle: Text('+62 123 4567 890'),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Color(0xFFB87C4C),
                        ),
                        title: Text('Alamat'),
                        subtitle: Text(
                          'Taman Nasional Gunung Rinjani\nLombok, Nusa Tenggara Barat',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
