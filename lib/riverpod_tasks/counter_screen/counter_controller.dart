


import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterController extends StateNotifier<int>{

  CounterController() : super(0);

  void increment() => state++;
  void reset() => state = 0;
  void decrement() => state--;
}

final counterNotifierProvider = StateNotifierProvider<CounterController,int>((ref) => CounterController());
