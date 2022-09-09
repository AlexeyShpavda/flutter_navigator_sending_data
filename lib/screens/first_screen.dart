import 'package:flutter/material.dart';
import 'package:flutter_navigator_sending_data/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'First Screen',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(
                  screenTitle: 'Screen Title',
                ),
              ),
            );

            print(result);
          },
          child: const Text('Second Screen'),
        ),
      ),
    );
  }
}
