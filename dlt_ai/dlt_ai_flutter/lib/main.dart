import 'package:dlt_ai_client/dlt_ai_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client(
  'http://$localhost:8080/',
)..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Serverpod Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    final dltFiles = await client.dltFile.list();
    print(dltFiles);
    //     final dltFile = await client.dltFile.create();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DLT AI'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            DateTime now = DateTime.now();
            int dateAsInt = now.year * 10000 +
                now.month * 100 +
                now.day +
                now.hour +
                now.minute +
                now.second +
                now.millisecond;
            final df = DltFile(
              title: 'flutter_media_dlt',
              created: dateAsInt,
            );

            print('dlt-file: ${df.title} created: ${df.created}');
            final dltFile = await client.dltFile.create(df);
            print('dlt-file: ${dltFile.title} created: ${dltFile.created}');
          },
        ),
        body: Column(
          children: [
            Text('Dlt AI Tool'),
            // IconButton(
            //     onPressed: () async => await client.dltFile.list([
            //           DltFile.fromJson(jsonSerialization, serializationManager)
            //         ]),
            //     icon: const Icon(Icons.add))
          ],
        ));
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
