import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

mixin NetworkAwareState<T extends StatefulWidget> on State<T> {
  bool _isDisconnected = false;

  late StreamSubscription<ConnectivityResult> _networkSubscription;
  final Connectivity _connectivity = Connectivity();

  void onReconnected();

  void onDisconnected();

  bool firstCallback = true;

  Future<void> initConnectivity() async {
    ConnectivityResult? result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on Exception catch (e) {
      log(e.toString(), error: e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value();
    }

    if (result != null) {
      _updateConnectionStatus(result);
    }
    return Future.value();
  }

  @override
  void initState() {
    super.initState();
    //listen to network changes
    initConnectivity();
    _networkSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult result) {
    log('Connectivity $result');
    if (result != ConnectivityResult.none) {
      if (_isDisconnected) {
        onReconnected();
        _isDisconnected = false;
      }
    } else {
      _isDisconnected = true;
      onDisconnected();
    }
  }

  @override
  void dispose() {
    cancelSubscription();
    super.dispose();
  }

  void cancelSubscription() {
    try {
      _networkSubscription.cancel();
    } catch (e) {
      log(e.toString(), error: e);
    }
  }
}
