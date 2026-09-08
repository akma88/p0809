import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(DownloadApp());

class DownloadApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DownloadAppState();
  }
}

class _DownloadAppState extends State<DownloadApp> {
  bool _loading = false;
  double _progressValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,

        appBar: AppBar(title: Text("Download Center"), centerTitle: true),

        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),

            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LinearProgressIndicator(value: _progressValue),

                      SizedBox(height: 15),

                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        'Downloading...',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                : Text(
                    'Press the button to start',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (!_loading) {
              setState(() {
                _loading = true;
              });

              _updateProgress();
            }
          },
          child: Icon(Icons.download),
        ),
      ),
    );
  }

  void _updateProgress() {
    const oneSec = Duration(seconds: 1);

    Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        _progressValue += 0.25;

        if (_progressValue >= 1.0) {
          _loading = false;
          _progressValue = 0.0;
          timer.cancel();
        }
      });
    });
  }
}
