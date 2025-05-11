class JhCourseRaw {
  ///节次
  final String slotRange;

  ///星期
  final String weekday;

  /// 课程编码
  final String courseCode;

  /// 课程名称
  final String courseName;

  /// 授课教师
  final String instructor;

  /// 开课时间（例如：20102）
  final String semester;

  /// 上课周次（例如：1-8）
  final String weekRange;

  /// 开课地点teachingWeeks
  final String place;

  /// 上课班级列表
  final List<String> classList;

  /// 构造函数，使用命名参数
  const JhCourseRaw({
    required this.slotRange,
    required this.weekday,
    required this.courseCode,
    required this.courseName,
    required this.instructor,
    required this.semester,
    required this.weekRange,
    required this.place,
    required this.classList,
  });

  @override
  String toString() {
    return 'JhCourseRaw{slotRange: $slotRange, weekday: $weekday, courseCode: $courseCode, courseName: $courseName, instructor: $instructor, semester: $semester, weekRange: $weekRange, place: $place, classList: $classList}';
  }
}
