import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<bool> isUserSignedIn() async {
    try {
      final user = auth.currentUser;
      return user != null;
    } catch (e) {
      return false;
    }
  }

  Future<Maybe<void>> createUserWithEmailAndPassword({required String email, required String password}) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;
      if (user != null) {
        await firestore
            .collection('users')
            .doc(user.uid)
            .set(AuvnetUserEntity(email: email, uid: user.uid).toJson()..putIfAbsent('createdAt', () => Timestamp.now()));
      }
      return const Success(null);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<Maybe<void>> signInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      final user = userCredential.user;
      if (user != null) {
        return const Success(null);
      } else {
        return const Failure('User not found');
      }
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<Maybe<void>> signOut() async {
    try {
      await auth.signOut();
      return const Success(null);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  String? get userID => auth.currentUser?.uid;

  Stream<User?> get onUserChanged => auth.authStateChanges();
}
