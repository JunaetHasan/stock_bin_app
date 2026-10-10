import 'package:flutter/material.dart';
import 'package:stock_bin/widgets/home_screen/custom_container.dart';
import 'package:stock_bin/widgets/home_screen/summary_cards.dart';
import 'package:stock_bin/widgets/home_screen/texts.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: CustomContainer(
        width: double.infinity,
        height: 85,
        child: Row(
          children: [
            SummaryCards(number: 1, text: 'Low Stock',),
            SizedBox(width: 19,),
            SummaryCards(number: 0, text: 'Draft',),
            SizedBox(width: 19,),

            SummaryCards(number: 4, text: 'Completed',),
            SizedBox(width: 19,),

            SummaryCards(number: 3, text: 'Due Cost',),
            SizedBox(width: 19,),

          ],
        ),
      ),
    );
  }
}

