enum TimeSlot {
  morning('Morning'),
  afternoon('AfterNoon'),
  evening('Evening');

  final String label;
  const TimeSlot(this.label);

  String get value => label;
}
