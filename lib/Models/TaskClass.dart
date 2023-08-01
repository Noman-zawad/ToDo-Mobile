class TaskClass {
  final String taskName;
  final String details;
  final DateTime dataTime;

  TaskClass({
    required this.taskName,
    required this.details,
    required this.dataTime,
  });

  @override
  String toString() {
    return 'TaskClass{TaskName: $taskName, details: $details, datetime: $dataTime}';
  }
}
