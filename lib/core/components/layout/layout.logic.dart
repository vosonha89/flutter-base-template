import 'dart:developer';
import 'package:flutter_base_template/core/base/presentation.logic.base.dart';
import 'package:flutter_base_template/core/components/layout/layout.component.dart';
import 'package:flutter_base_template/core/constants/global_notification.contant.dart';
import 'package:flutter_base_template/core/services/local/global_notification.service.dart';

class LayoutLogic extends BaseStatefulLogic<LayoutComponent> implements OnInit {
  bool isLoading = false;
  GlobalNotifcationNotifier? loadingListener;

  @override
  Future<void> onInit() async {
    await super.onInit();
    initLoading();
  }

  void initLoading() {
    loadingListener = GlobalNotificationService.instance.addListener(
      GlobalNotificationKeys.loading,
      GlobalNotifcationNotifierListener(
        'layoutLoadingListener',
        loadingOnListener,
      ),
    );
    isReady = true;
  }

  void loadingOnListener() {
    setState(() {
      if (loadingListener != null) {
        isLoading = loadingListener!.getData<bool>();
        log(isLoading.toString());
      }
    });
  }
}
