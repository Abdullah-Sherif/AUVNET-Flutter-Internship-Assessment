import 'dart:async';

import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:auvnet_internship_assessment/features/barrel.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton()
class UserRepository {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final StreamController<AuvnetUserEntity?> _userController = StreamController<AuvnetUserEntity?>.broadcast();

  StreamSubscription? _userSubscription;

  /// Fetches the user data from Firestore and returns a stream of AuvnetUserEntity
  /// based on the provided userId.
  /// If the user does not exist, it returns a stream with null.
  Stream<AuvnetUserEntity?> getUser(String userId) {
    _userSubscription?.cancel();
    _userSubscription = firestore.collection('users').doc(userId).snapshots().listen((snapshot) {
      if (snapshot.exists) {
        final user = AuvnetUserEntity.fromJson(snapshot.data()!);
        _userController.add(user);
      } else {
        _userController.add(null);
      }
    });

    return _userController.stream;
  }

  Future<Maybe<void>> updateUser(AuvnetUserEntity user) async {
    try {
      await firestore.collection('users').doc(user.uid).set(user.toJson(), SetOptions(merge: true));
      return Success(null);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  Future<Maybe<void>> deleteUser(String userId) async {
    try {
      await firestore.collection('users').doc(userId).delete();
      return Success(null);
    } catch (e) {
      return Failure(e.toString());
    }
  }

  void onUnauthenticated() {
    _userSubscription?.cancel();
    _userController.add(null);
  }

  Stream<AuvnetUserEntity?> get onUserChanged => _userController.stream.asBroadcastStream();
}
