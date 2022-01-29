import 'package:alvin_mock_app/config/Palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BudgetList.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({Key? key, this.icon, this.title}) : super(key: key);
  final String? title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Palette.tertiaryColor,
        boxShadow: [
          BoxShadow(
            color: Palette.accentColor.withOpacity(.20),
            blurRadius: 15.0, // soften the shadow//extend the shadow
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(child: icon!),
                      SizedBox(width: width * 0.04),
                      SizedBox(
                        child: Text(
                          '$title',
                          style: const TextStyle(
                            color: Palette.darkColor,
                            fontSize: 16,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Palette.primaryColor.withOpacity(.80),
                    size: 16,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.025),
          SizedBox(
            child: Row(
              children: [
                Flexible(
                  child: LinearProgressIndicator(
                    minHeight: 6,
                    color: Palette.primaryColor.withOpacity(.70),
                    value: 0.2,
                    backgroundColor: Palette.primaryColor.withOpacity(.20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.025),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BudgetDetails(
                    color: Palette.primaryColor.withOpacity(.70),
                    amount: 'KES 24000 spent',
                  ),
                ),
                Expanded(
                  child: BudgetDetails(
                    color: Palette.primaryColor.withOpacity(.20),
                    amount: 'KES 5000 available',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
