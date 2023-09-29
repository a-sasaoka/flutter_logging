import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_logging/mixin/my_logger.dart';
import 'package:flutter_logging/my_class.dart';

Future<void> main() async {
  // 設定ファイルの読み込み
  await dotenv.load();
  runApp(const MyApp());
}

/// MyApp
class MyApp extends StatelessWidget {
  /// コンストラクタ
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

/// MyHomePage
class MyHomePage extends StatefulWidget {
  /// コンストラクタ
  const MyHomePage({required this.title, super.key});

  /// タイトル
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
    logger
      ..t('Trace log')

      // Debug log
      ..d('Debug log')

      // Info log
      ..i('Info log')

      // Warning log
      ..w('Warning log')

      // Error log
      ..e('Error log')

      // Fatal log
      ..f('Fatal log');

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
