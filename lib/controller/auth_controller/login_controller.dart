import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:plant_apps/features/auth_screen/login_screen.dart';
import 'package:plant_apps/features/home_screen/presentation/home_screen.dart';

class LoginController extends GetxController {
  var isPasswordVisible = false.obs;
  var isChecked = false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleRememberMe(bool value) {
    isChecked.value = value;
  }

  Future<void> signInWithEmailPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.to(const HomeScreen());
    } catch (e) {
      Get.snackbar("Error", e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAll(LoginInScreen());
  }
}
