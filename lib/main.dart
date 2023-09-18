import 'package:flutter/material.dart';
import 'package:flutter_logging/mixin/my_logger.dart';
import 'package:flutter_logging/my_class.dart';
import 'package:logger/logger.dart';

void main() {
  // ログレベルを指定
  Logger.level = Level.all;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with MyLogger {
  int _counter = 0;
  final MyClass _myCLass = MyClass();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Trace log
    getLogger().t('Trace log');

    // Debug log
    getLogger().d('Debug log');

    // Info log
    getLogger().i('Info log');

    // Warning log
    getLogger().w('Warning log');

    // Error log
    getLogger().e("Error log");

    // Fatal log
    getLogger().f("Fatal log");

    _myCLass.output();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
