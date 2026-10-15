
import 'package:get/get.dart';
import 'package:stock_bin/controller/sales_controller.dart';
import 'package:stock_bin/controller/stock_Invoice_controller.dart';
import 'package:stock_bin/controller/stock_bin_controller.dart';

class GetBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(StockBinController());
    Get.put(SalesController());
    Get.put(StockInvoiceController());
  }
}