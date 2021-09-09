class PatientModel {
  final int patientId;
  final CheckUpTime;
  final patientName;
  final patientAge;
  final patientPhone;
  final patientAddress;
  final patientDiagnoses;
  final patientTreatment;
  final patientNotes;

  PatientModel({
    required this.patientId,
    required this.CheckUpTime,
    required this.patientName,
    required this.patientAge,
    required this.patientPhone,
    required this.patientAddress,
    required this.patientDiagnoses,
    required this.patientTreatment,
    required this.patientNotes,
  });
}
