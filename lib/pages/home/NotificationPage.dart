import 'package:alvin_mock_app/config/Palette.dart';
import 'package:flutter/cupertino.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: const Text(
          'No Notifications at the moment',
          style: TextStyle(
            color: Palette.accentColor,
            fontSize: 22,
            fontFamily: 'Poppins-Bold',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
