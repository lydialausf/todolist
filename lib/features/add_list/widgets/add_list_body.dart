import 'package:flutter/material.dart';

/// {@template add_list_body}
/// Body of the AddListPage.
///
/// Add what it does
/// {@endtemplate}
class AddListBody extends StatelessWidget {
  /// {@macro add_list_body}
  const AddListBody({super.key});

  final categories = const [
    {
      'category': "Personal",
    },
    {
      'category': "Work",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("To Do"),
                SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
