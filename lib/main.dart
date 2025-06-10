import 'dart:developer' as dev;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_application_1/cubit/counter_state.dart';

import 'package:flutter_application_1/model/user.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => CounterCubit(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(title: 'Flutter Demo Home Page'));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  UserModel userl = UserModel(1, 'maha');
  UserModel user2 = UserModel(1, 'maha');

  @override
  Widget build(BuildContext context) {
    print(userl.hashCode == user2.hashCode);
    print(userl.hashCode);
    print(user2.hashCode);
    print("Build");
    dev.log("Build start");

    dev.log('Build child');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // context.read<ConterBloc>().add(
              //   IncreamentEvent(),
              // ); //   =====> Bloc
              context.read<CounterCubit>().increamentCount(); // =====> cubit
            },
            child: const Icon(Icons.add, color: Colors.green),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // context.read<ConterBloc>().add(DecremntEvent()); //   =====> Bloc
              context.read<CounterCubit>().decreamentCount(); // =====> cubit
            },
            tooltip: 'decrement',
            child: const Icon(Icons.remove, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
