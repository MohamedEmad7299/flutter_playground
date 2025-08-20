
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int>{

  CounterNotifier() : super(0);

  void increment() => state++;
  void reset() => state = 0;
  void decrement() => state--;
}

final counterNotifierProvider = StateNotifierProvider((ref) => CounterNotifier());