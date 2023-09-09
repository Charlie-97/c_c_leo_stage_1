import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubPage extends StatefulWidget {
  const GitHubPage({super.key});

  @override
  State<GitHubPage> createState() => _GitHubPageState();
}

class _GitHubPageState extends State<GitHubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: const WebView(
      initialUrl: 'https://github.com/chizzykas',
    ),
    );
    
  }
}
