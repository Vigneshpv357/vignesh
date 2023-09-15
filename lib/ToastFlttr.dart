
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(
  MaterialApp(
    builder: FToastBuilder(),
    home: ToastScrn(),
    navigatorKey: navigatorKey,
  ),
);

class ToastScrn extends StatefulWidget {
  @override
  _ToastScrnState createState() => _ToastScrnState();
}

class _ToastScrnState extends State<ToastScrn> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    fToast.init(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              fToast.showToast(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.greenAccent,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("This is a Custom Toast"),
                    ],
                  ),
                ),
                gravity: ToastGravity.BOTTOM,

                toastDuration: Duration(seconds: 2),
              );
            },
            child: Text("Flutter Toast No Context"),
          ),
          SizedBox(
            height: 24.0,
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: Text("Flutter Toast Context"),
          ),
        ],
      ),
    );
  }
}