import 'package:flutter/material.dart';
import 'package:restro/screens/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi, Please Select Menu',
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () async {
                  final response = await showAppBottomSheet<String>(
                      context, MenuBottomSheet());
                  if (response != null) {
                    // work with data
                  }
                },
                child: const Text('Open Menu'))
          ],
        ),
      ),
    );
  }
}
