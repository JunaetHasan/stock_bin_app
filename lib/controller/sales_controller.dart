import 'package:get/get.dart';

class SalesController extends GetxController {
  double totalSales = 1730;

  List<double> salesData = [800, 1100, 950, 1600, 1300, 1730];

  void increaseSales() {
    totalSales += 200;
    _updateSalesData();
  }

  void decreaseSales() {
    if (totalSales >= 200) {
      totalSales -= 200;
      _updateSalesData();
    }
  }

  void _updateSalesData() {
    salesData = [...salesData, totalSales];

    if (salesData.length > 7) {
      salesData = salesData.sublist(salesData.length - 7);
    }

    update();
  }
}
