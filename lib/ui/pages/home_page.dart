import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  static const String name = 'HomePage';
  static const String path = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(0);

    return Scaffold(
      body: Center(
        child: Text(
          'You have pushed the button this many times: ${counter.value}',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
