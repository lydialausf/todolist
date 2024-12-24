import 'package:flutter/material.dart';
import 'package:todo_list/model/model.dart';

/// {@template add_list_body}
/// Body of the AddListPage.
///
/// Add what it does
/// {@endtemplate}
class AddListBody extends StatefulWidget {
  /// {@macro add_list_body}
  const AddListBody({required this.category, super.key});

  final CategoryResponse category;

  @override
  State<AddListBody> createState() => _AddListBodyState();
}

class _AddListBodyState extends State<AddListBody> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        switchToCalendarEntryModeIcon: const Icon(Icons.calendar_month),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = selectedDate.toString().substring(0, 10);
      });
    }
  }

  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
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
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 200,
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(widget.category.personal),
                  ),
                ),
                const SizedBox(width: 8.0),
                SizedBox(
                  width: 200,
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(widget.category.work),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                const Text("Due*"),
                const SizedBox(height: 8.0),
                TextField(
                  controller: _dateController,
                  onTap: () => _selectDate(context),
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                Text("Author*"),
                SizedBox(height: 8.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
