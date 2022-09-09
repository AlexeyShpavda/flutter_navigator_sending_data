import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String screenTitle;

  const SecondScreen({
    Key? key,
    required this.screenTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          screenTitle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Back button has been pressed');
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
