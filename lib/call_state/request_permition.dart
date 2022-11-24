import 'package:permission_handler/permission_handler.dart';
import 'package:phone_state/phone_state.dart';

Future<bool> requestPermissionPhoneState() async {
  PermissionStatus status = await Permission.phone.request();
  switch (status) {
    case PermissionStatus.denied:
    case PermissionStatus.restricted:
    case PermissionStatus.limited:
    case PermissionStatus.permanentlyDenied:
      return false;
    case PermissionStatus.granted:
      return true;
  }
}