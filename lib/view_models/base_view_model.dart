import 'package:flutter/material.dart';

abstract class BaseViewModel extends ChangeNotifier{
  bool _isDisposed = false;

  bool get isDisposed => _isDisposed;

  bool _busy = false;
  set busy(bool busy){
    _busy = busy;
    if(!_isDisposed) notifyListeners();
  }
  bool get busy => _busy;

  String _errorMessage = '';
  set errorMessage(String errorMessage){
    _errorMessage = errorMessage;
    if(!_isDisposed) notifyListeners();
  }
  String get errorMessage => _errorMessage;

  void initViewModel(BuildContext context);

  void disposeViewModel();

  Future<void> resumeViewModel(BuildContext context) async {}

  Future<void> inactiveViewModel(BuildContext context) async {}

  Future<void> pauseViewModel(BuildContext context) async {}

  Future<void> detachViewModel(BuildContext context) async {}

  Future<void> hiddenViewModel(BuildContext context) async {}

  void preDisposeViewModel(){
    _isDisposed = true;
    disposeViewModel();
  }
}