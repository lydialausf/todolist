import 'package:flutter/material.dart';
import 'package:todo_list/features/inital_page/bloc/bloc.dart';

/// {@template inital_page_body}
/// Body of the InitalPagePage.
///
/// Add what it does
/// {@endtemplate}
class InitalPageBody extends StatelessWidget {
  /// {@macro inital_page_body}
  const InitalPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitalPageBloc, InitalPageState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
