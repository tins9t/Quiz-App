import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


//https://pub.dev/packages/qr_flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR Code Example'),
        ),
        body: Center(
          child: QrImageView(
            data: 'https://www.youtube.com/watch?v=hB8S6oKjiw8&ab_channel=TrashStars',
            version: QrVersions.auto,
            size: 200.0,
            backgroundColor: Colors.lightBlueAccent,
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Colors.blueAccent,
              ),
          ),
        ),
      ),
    );
  }
}

