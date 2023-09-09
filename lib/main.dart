import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HngiId(),
    ),
  );
}

class HngiId extends StatelessWidget {
  const HngiId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        body: Center(
            child: Column(
      children: [
        const Text(
          'C C LEO',
          style: TextStyle(),
        ),
        const CircleAvatar(
          radius: 20.0,
          backgroundImage: AssetImage('assets\slack_display.jpg'),
        ),
        ElevatedButton(
          child: Text('Open Github'),
          onPressed: () {
            const WebView(initialUrl: 'https://github.com/chizzykas');
          },
        ),
      ],
    ),),);
  }
}
