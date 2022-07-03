import 'package:fast_call_app/views/home_ui.dart';
import 'package:flutter/material.dart';

class SpScUI extends StatefulWidget {
  const SpScUI({Key? key}) : super(key: key);

  @override
  State<SpScUI> createState() => _SpScUIState();
}

class _SpScUIState extends State<SpScUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[80],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                'assets/images/screen.png',
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'สายด่วน',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            CircularProgressIndicator(
              color: Colors.red[700],
              strokeWidth: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
