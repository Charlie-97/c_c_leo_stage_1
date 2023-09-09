import 'package:c_c_leo_stage_1/pages/webpage.dart';
import 'package:c_c_leo_stage_1/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const HngiId(),
        '/gitHubPage': (context) => const GitHubPage(),
      },
    ),
  );
}
