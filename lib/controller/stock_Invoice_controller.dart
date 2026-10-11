import 'package:get/get.dart';

class StockInvoiceController extends GetxController {
  bool isLowStock = true;

  static final List<Map<String, String>> lowStockData = [
    {'name': 'Nike Air Max', 'value': '3 items', 'status': 'Low Stock'},
    {'name': 'Adidas Runner', 'value': '5 items', 'status': 'Low Stock'},
    {'name': 'Puma Sport', 'value': '2 items', 'status': 'Low Stock'},
  ];
 static final List<Map<String, String>> invoiceData = [
    {'name': 'Invoice #INV-1001', 'value': '৳ 12,500', 'status': 'Paid'},
    {'name': 'Invoice #INV-1002', 'value': '৳ 8,200', 'status': 'Pending'},
    {'name': 'Invoice #INV-1003', 'value': '৳ 15,700', 'status': 'Paid'},
  ];

  void changeTab(bool lowStock) {
    isLowStock = lowStock;
    update();
  }
}
