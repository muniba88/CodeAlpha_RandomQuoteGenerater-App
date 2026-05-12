import 'package:flutter/material.dart';

class CategoryDialog extends StatelessWidget {
  final List<String> categories;
  final Function(String?) onSelected;

  const CategoryDialog({
    super.key,
    required this.categories,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select Category"),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: const Text("All"),
              onTap: () {
                onSelected(null);
                Navigator.pop(context);
              },
            ),
            ...categories.map(
              (cat) => ListTile(
                title: Text(cat),
                onTap: () {
                  onSelected(cat);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
