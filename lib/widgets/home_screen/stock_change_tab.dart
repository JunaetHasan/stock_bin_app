import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/stock_Invoice_controller.dart';

class StockChangeTab extends StatelessWidget {
  const StockChangeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: GetBuilder<StockInvoiceController>(
        builder: (controller) {
          final data = controller.isLowStock
              ? StockInvoiceController.lowStockData
              : StockInvoiceController.invoiceData;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              Container(
                height: 70,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color(0xffeeeeee),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: tabButton(
                          title: 'Low Stock',
                          selected: controller.isLowStock,
                          onTap: () => controller.changeTab(true),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: tabButton(
                          title: 'Invoices',
                          selected: !controller.isLowStock,
                          onTap: () => controller.changeTab(false),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                separatorBuilder: (context, index) => const SizedBox(height: 4),
                itemBuilder: (context, index) {
                  final item = data[index];

                  return Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Row(
                      mainAxisAlignment: .start,
                      crossAxisAlignment: .start,

                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.red.withAlpha(40),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.circle_rounded, size: 35),
                        ),
                        SizedBox(width: 9),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['name'] ?? '',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                item['value'] ?? '',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          item['status'] ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: controller.isLowStock
                                ? Colors.orange.shade700
                                : Colors.green,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget tabButton({
    required String title,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ]
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
            color: selected ? Colors.black : Colors.grey.shade700,
          ),
        ),
      ),
    );
  }
}
