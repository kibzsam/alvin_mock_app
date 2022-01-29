import 'package:alvin_mock_app/config/Palette.dart';
import 'package:flutter/cupertino.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: const [
          Text(
            'Overview',
            style: TextStyle(
              color: Palette.accentColor,
              fontSize: 24,
              fontFamily: 'Poppins-Bold',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
