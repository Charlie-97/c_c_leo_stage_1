import 'package:flutter/material.dart';

class HngiId extends StatefulWidget {
  const HngiId({super.key});

  @override
  State<HngiId> createState() => _HngiIdState();
}

class _HngiIdState extends State<HngiId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('ID APP'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'C C LEO',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const CircleAvatar(
              radius: 130.0,
              backgroundImage: AssetImage('assets/slack_display.jpg'),
            ),
            const SizedBox(
              height: 100.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[900],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Open GitHub'),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/gitHubPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
