import 'dart:convert';

import 'package:app/pb/api/v1/data.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;

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
  State<ConfigReader> createState() => ConfigReaderState();
}

class ConfigReaderState extends State<ConfigReader> {
  // TODO(chases2): add an input box to the widget for scope
  final String _scope = "gs://slchase-testgrid";
  List<String> list = ['Press Button to call API'];

  final stub = TestGridDataClient(ClientChannel('localhost',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure())));

  Future<http.Response> fetchDashboardNames(http.Client client) async {
    // TODO(chases2): instantiate a client and actually use it
    return http.get(
        Uri.parse('http://localhost:8080/api/v1/dashboards?scope=$_scope'));
  }

  void getAllDashboardNames() async {
    ListDashboardResponse resp = ListDashboardResponse();

    http.Response? httpResp;
    try {
      httpResp = await fetchDashboardNames(http.Client());
    } catch (_) {
      setState(() {
        list = ['API unavailable'];
      });
      return;
    }
    if (httpResp.statusCode != 200) {
      setState(() {
        list = [
          'Error with API call: ${httpResp!.statusCode}',
          httpResp.body,
        ];
      });
      return;
    } else {
      try {
        resp.mergeFromProto3Json(jsonDecode(httpResp.body));
      } catch (e) {
        setState(() {
          list = ['API response is invalid'];
        });
        return;
      }
    }

    List<String> dashNames = [];

    for (var dashboard in resp.dashboards) {
      dashNames.add(dashboard.name);
    }

    setState(() {
      list = dashNames;
    });
  }

  // nb: call setState(func) instead of calling build when you need to refresh
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: getTextListWidget(list)),
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
