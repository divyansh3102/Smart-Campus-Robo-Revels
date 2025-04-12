import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAM9hfn0Z0XfJnSfAolpfD3wqI1gQF2DzQ",
            authDomain: "smartcampus-vedfl6.firebaseapp.com",
            projectId: "smartcampus-vedfl6",
            storageBucket: "smartcampus-vedfl6.firebasestorage.app",
            messagingSenderId: "210530512230",
            appId: "1:210530512230:web:707589a9d7b58947032ca7"));
  } else {
    await Firebase.initializeApp();
  }
}
