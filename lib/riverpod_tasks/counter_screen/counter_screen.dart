

import 'package:flutter/material.dart';
import 'package:flutter_playground/riverpod_tasks/counter_screen/counter_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {

  CounterScreen({super.key});
  
  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final counter = ref.watch(counterNotifierProvider);
    
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Column(
              children: [
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Spacer(),
                      FloatingActionButton(
                        onPressed: (){
                          ref.read(counterNotifierProvider.notifier).decrement();
                        },
                        child: Icon(Icons.remove),
                      ),
                      const SizedBox(width: 24),
                      FloatingActionButton(
                        onPressed: (){
                          ref.read(counterNotifierProvider.notifier).reset();
                        },
                        child: Icon(Icons.refresh),
                      ),
                      const SizedBox(width: 24),
                      FloatingActionButton(
                        onPressed: (){
                          ref.read(counterNotifierProvider.notifier).increment();
                        },
                        child: Icon(Icons.add),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}