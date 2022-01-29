import 'package:alvin_mock_app/config/Palette.dart';
import 'package:flutter/cupertino.dart';

class BudgetDetails extends StatelessWidget {
  const BudgetDetails({Key? key, this.color, this.amount}) : super(key: key);
  final Color? color;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: color!,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(width: width * 0.015),
        Expanded(
          child: Text(
            '$amount',
            style: const TextStyle(
              color: Palette.darkColor,
              fontSize: 14,
              fontFamily: 'Poppins-Bold',
            ),
          ),
        ),
      ],
    );
  }
}
