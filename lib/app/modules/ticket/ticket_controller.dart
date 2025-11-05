import 'package:get/get.dart';

class TicketController extends GetxController {
  final tickets = [
    {
      'type': 'Wisatawan Domestik',
      'weekday': 'Rp 5.000',
      'weekend': 'Rp 7.500',
    },
    {
      'type': 'Wisatawan Mancanegara',
      'weekday': 'Rp 150.000',
      'weekend': 'Rp 150.000',
    },
    {'type': 'Camping', 'weekday': 'Rp 25.000', 'weekend': 'Rp 25.000'},
  ].obs;
}
