import 'package:flutter/foundation.dart';

class GlobalNotifcationNotifierListener {
  String listenerAt;
  void Function() listenerMethod;

  GlobalNotifcationNotifierListener(this.listenerAt, this.listenerMethod);
}

// Change notifier on global listening
class GlobalNotifcationNotifier extends ChangeNotifier {
  late String key;
  dynamic _value;
  List<GlobalNotifcationNotifierListener> listeners = [];

  GlobalNotifcationNotifier(String keyValue) {
    key = keyValue;
  }

  // Set value and notify for all listeners
  void setValue<T>(T data) {
    _value = data;
    notifyListeners();
  }

  // Get value
  T getData<T>() {
    return _value;
  }
}

// Service for global notification
class GlobalNotificationService {
  GlobalNotificationService._privateConstructor();
  static final GlobalNotificationService _instance =
      GlobalNotificationService._privateConstructor();
  static GlobalNotificationService get instance => _instance;

  List<GlobalNotifcationNotifier?> notifiers = [];

  // Set listener data and notificate for all
  setListenerData<T>(String key, T data) {
    GlobalNotifcationNotifier? notifier = notifiers.firstWhere(
      (element) => element != null && element.key == key,
      orElse: () => null,
    );
    if (notifier == null) {
      notifier = GlobalNotifcationNotifier(key);
      notifier.setValue(data);
      notifiers.add(notifier);
    } else {
      notifier.setValue(data);
    }
  }

  // Get listener
  GlobalNotifcationNotifier addListener(
    String key,
    GlobalNotifcationNotifierListener listener,
  ) {
    GlobalNotifcationNotifier? notifier = notifiers.firstWhere(
      (element) => element != null && element.key == key,
      orElse: () => null,
    );
    if (notifier == null) {
      notifier = GlobalNotifcationNotifier(key);
      notifier.listeners.add(listener);
      notifiers.add(notifier);
    } else {
      for (var listener in notifier.listeners) {
        notifier.removeListener(listener.listenerMethod);
      }
      if (notifier.listeners.any(
        (item) => item.listenerAt != listener.listenerAt,
      )) {
        notifier.listeners.add(listener);
      }
    }
    for (var listener in notifier.listeners) {
      notifier.addListener(listener.listenerMethod);
    }

    return notifier;
  }
}
