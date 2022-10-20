import 'package:app/pb/api/v1/data.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Config Reader',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ConfigReader(title: 'Config Reader Demo'),
    );
  }
}

class ConfigReader extends StatefulWidget {
  ConfigReader({super.key, required this.title});

  final String title;

  @override
  State<ConfigReader> createState() => _ConfigReaderState();
}

class _ConfigReaderState extends State<ConfigReader> {
  // TODO(slchase): add an input box to the widget for scope
  final String _scope = "gs://slchase-testgrid";
  final List<String> _error = [
    'Error with API call; check console',
    'Is the API running at localhost:50051?'
  ];

  List<String> _list = ['Press Button to call API'];

  final stub = TestGridDataClient(ClientChannel('localhost',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));

  void getAllDashboardNames() async {
    ListDashboardResponse resp;
    try {
      resp = await stub.listDashboard(ListDashboardRequest(
        scope: _scope,
      ));
    } catch (e) {
      setState(() {
        _list = _error;
      });
      rethrow;
    }

    List<String> dashNames = [];

    resp.dashboards.forEach((dashboard) => dashNames.add(dashboard.name));

    setState(() {
      _list = dashNames;
    });
  }

  // nb: call setState(func) instead of calling build when you need to refresh
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: getTextListWidget(_list)),
      floatingActionButton: FloatingActionButton(
        onPressed: getAllDashboardNames,
        tooltip: 'Call API',
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}

ListView getTextListWidget(List<String>? entries) {
  if (entries == null || entries.isEmpty) {
    return ListView();
  }

  return ListView.builder(
    padding: const EdgeInsets.all(16.0),
    itemCount: (entries.length * 2) - 1,
    itemBuilder: (context, i) {
      if (i.isOdd) return const Divider();

      final index = i ~/ 2;
      return ListTile(
        title: Text(
          entries[index],
        ),
      );
    },
  );
}
