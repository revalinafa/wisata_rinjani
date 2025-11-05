import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(controller.data['title'])),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (controller.data['imagePath'] ?? '').toString().startsWith('http')
                ? Image.network(
                    controller.data['imagePath'],
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    controller.data['imagePath'],
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.data['title'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB87C4C),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    controller.data['description'],
                    style: TextStyle(fontSize: 16, color: Color(0xFFC4A484)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
