import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Constants {


  /// firebase Collections
  static const String patientCollection = 'PatientCollection';

  /// Firebase Constants patient collection
  static const String patientId = 'PatientId';
  static const String patientName = 'PatientName';
  static const String patientAge = 'PatientAge';
  static const String patientPhone = 'PatientPhone';
  static const String patientAddress = 'PatientAddress';
  static const String patientDiagnoses = 'PatientDiagnoses';
  static const String patientTreatment = 'PatientTreatment';
  static const String patientNotes = 'PatientNotes';
  static const String CheckOutTime = 'CheckOutTime';

  /// images assets
  static const String profileImage = 'images/profile_image.jpeg';

  static void navigatorPush({context, screen}) {
    Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        child: screen,
      ),
    );
  }
  static void navigatorPushAndRemove({context, screen}) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        child: screen,
      ),
          (route) => false,
    );
  }
}