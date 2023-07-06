import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/screen/testpage/cubit/mock_cubit_cubit.dart';

@RoutePage()
class Test1Screen extends StatelessWidget {
  const Test1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => MockCubitCubit()..getMockApi(),
      child: BlocBuilder<MockCubitCubit, MockCubitState>(
        builder: (context, state) {
          return ListView.builder(
            itemBuilder: (context, index) => Text(state.data[index].user ?? ''),
            itemCount: state.data.length,
          );
        },
      ),
    ));
  }
}
