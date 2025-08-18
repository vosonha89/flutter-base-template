import 'package:flutter_base_template/core/constants/global_notification.contant.dart';
import 'package:flutter_base_template/core/services/local/global_notification.service.dart';

class LoadingService {
  void showLoading() {
    GlobalNotificationService.instance.setListenerData(
      GlobalNotificationKeys.loading,
      true,
    );
  }

  void hideLoading() {
    GlobalNotificationService.instance.setListenerData(
      GlobalNotificationKeys.loading,
      false,
    );
  }
}
