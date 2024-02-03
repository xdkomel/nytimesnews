import 'package:flutter/widgets.dart';

class StoriesList extends StatefulWidget {
  final String categoryName;

  const StoriesList({super.key, required this.categoryName});

  @override
  State<StoriesList> createState() => _StoriesListState();
}

class _StoriesListState extends State<StoriesList> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ...List.generate(
              100,
              (index) => Text("$index in ${widget.categoryName}"),
            ),
          ],
        ),
      );
}
