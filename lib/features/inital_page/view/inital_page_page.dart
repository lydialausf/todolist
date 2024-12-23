import 'package:flutter/material.dart';
import 'package:todo_list/features/inital_page/bloc/bloc.dart';
import 'package:todo_list/features/inital_page/widgets/inital_page_body.dart';

/// {@template inital_page_page}
/// A description for InitalPagePage
/// {@endtemplate}
class InitalPagePage extends StatelessWidget {
  /// {@macro inital_page_page}
  const InitalPagePage({super.key});

  /// The static route for InitalPagePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const InitalPagePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InitalPageBloc(),
      child: const Scaffold(
        body: InitalPageView(),
      ),
    );
  }    
}

/// {@template inital_page_view}
/// Displays the Body of InitalPageView
/// {@endtemplate}
class InitalPageView extends StatelessWidget {
  /// {@macro inital_page_view}
  const InitalPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const InitalPageBody();
  }
}
