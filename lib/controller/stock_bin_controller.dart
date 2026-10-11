import 'package:get/get.dart';

class StockBinController extends GetxController {
  int selectedDays = 1;

  void changesDays(int days) {
    selectedDays = days;
    update();
  }
}