import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:validators/validators.dart';

import '../core/vite_uri.dart';
import '../widgets/qr_scanner_widget.dart';
import 'vite_util.dart';

enum DataType { RAW, URL, ADDRESS, SEED }

String sanitizeUri(String uri, String scheme) {
  if (isIP(uri)) {
    return uri;
  }
  if (uri.startsWith(scheme) || uri.startsWith('${scheme}s')) {
    return uri;
  }
  return '${scheme}s://$uri';
}

class UserDataUtil {
  static String? _parseData(String data, DataType type) {
    data = data.trim();
    if (type == DataType.RAW) {
      return data;
    } else if (type == DataType.URL) {
      if (isIP(data)) {
        return data;
      } else if (isURL(data)) {
        return data;
      }
    } else if (type == DataType.ADDRESS) {
      final viteUri = ViteUri.tryParse(data);
      if (viteUri != null) {
        return viteUri.address.viteAddress;
      }
    } else if (type == DataType.SEED) {
      // Check if valid seed
      if (ViteUtil.isValidSeed(data)) {
        return data;
      }
    }
    return null;
  }

  static Future<String?> getClipboardText(DataType type) async {
    ClipboardData? data = await Clipboard.getData("text/plain");
    if (data == null || data.text == null) {
      return null;
    }
    return _parseData(data.text!, type);
  }

  static Future<Barcode?> scanQrCode(BuildContext context) async {
    final result = await Navigator.of(context).push<Barcode>(
      MaterialPageRoute(builder: (BuildContext context) {
        return const QrScannerWidget();
      }),
    );
    return result;
  }
}
