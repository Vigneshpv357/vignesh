import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
/* .... */

Future<String> get _getDirPath async {
  final dir = await getApplicationDocumentsDirectory();
  return dir.path;
}

