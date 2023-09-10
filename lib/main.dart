import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

void main() {
  runApp(
    const MaterialApp(
      home: IDPage(),
    ),
  );
}
class IDPage extends StatefulWidget {
  const IDPage({super.key});

  @override
  State<IDPage> createState() => _IDPageState();
}

class _IDPageState extends State<IDPage> {
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
              height: 40.0,
            ),
            const CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('assets/images/slack_display.jpg'),
            ),
            const SizedBox(
              height: 120.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[900],
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Open GitHub'),
              ),
              onPressed: () => _launchURL(context),
              // {
              //   // Navigator.pushNamed(context, '/gitHubPage');
              // },
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(BuildContext context) async {
    try {
      await launch(
        'https://github.com/chizzykas',
        customTabsOption: CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
        ),
        safariVCOption: SafariViewControllerOption(
          preferredBarTintColor: Colors.grey[900],
          preferredControlTintColor: Colors.white,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }
}
