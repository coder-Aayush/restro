// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

@immutable
class MenuBottomSheet extends StatelessWidget {
  MenuBottomSheet({super.key});

  final List<String> menus = ['Fish', 'Food', 'Rice'];

  String? selectedMenu;

  Widget get height20 => const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            height20,
            Text('Select Food', style: Theme.of(context).textTheme.headline6),
            height20,
            Wrap(
              spacing: 20,
              children: List.generate(
                menus.length,
                (index) {
                  final menu = menus[index];
                  return ActionChip(
                    backgroundColor: selectedMenu == menu
                        ? Colors.indigo
                        : Colors.grey.shade200,
                    onPressed: () {
                      selectedMenu = menu;
                      setState(() {});
                    },
                    label: Text(menu),
                  );
                },
              ),
            ),
            height20,
            if (selectedMenu != null) Text(selectedMenu!),
            height20,
            TextButton(
              onPressed: () => Navigator.pop(context, selectedMenu),
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}
