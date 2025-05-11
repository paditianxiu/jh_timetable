import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:jh_timetable/entity.dart';

List<JhCourseRaw> parseJhTiemeTableFromHtml(String html) {
  final bs = BeautifulSoup(html);
  final timetable = bs.find('#kb');
  final table = timetable!.find('table');
  if (table == null) {
    return [];
  }

  final courses = <JhCourseRaw>[];
  final weekAsix = table.findAll('tr');

  // 跳过表头行
  for (var i = 1; i < weekAsix.length; i++) {
    final slotAsix = weekAsix[i].findAll('td');
    if (slotAsix.length > 1) {
      // 遍历星期一到星期天 (cells 从 index 1 开始)
      for (var j = 1; j < slotAsix.length; j++) {
        final cell = slotAsix[j];
        final links = cell.findAll('a');
        for (final link in links) {
          final title = link.getAttrValue('title');
          if (title != null) {
            final course = _parseCourseFromTitle(
              title: title,
              weekday: weekAsix[0].findAll('td')[j].text,
              slotRange: slotAsix[0].text,
            );
            courses.add(course);
          }
        }
      }
    }
  }
  return courses;
}

JhCourseRaw _parseCourseFromTitle({
  required String title,
  required String weekday,
  required String slotRange,
}) {
  final lines =
      title
          .split('\n')
          .map((line) => line.trim())
          .where((line) => line.isNotEmpty)
          .toList();

  final courseCode = lines
      .firstWhere((line) => line.startsWith('课程编码：'))
      .substring(5);
  final courseName = lines
      .firstWhere((line) => line.startsWith('课程名称：'))
      .substring(5);
  final instructor = lines
      .firstWhere((line) => line.startsWith('授课教师：'))
      .substring(5);
  final semester = lines
      .firstWhere((line) => line.startsWith('开课时间：'))
      .substring(5);
  final teachingWeeks = lines
      .firstWhere((line) => line.startsWith('上课周次：'))
      .substring(5);
  final location = lines
      .firstWhere((line) => line.startsWith('开课地点：'))
      .substring(5);
  final classList = lines
      .firstWhere((line) => line.startsWith('上课班级：'))
      .substring(5)
      .split(',');

  return JhCourseRaw(
    slotRange: slotRange,
    weekday: weekday,
    courseCode: courseCode,
    courseName: courseName,
    instructor: instructor,
    semester: semester,
    weekRange: teachingWeeks,
    place: location,
    classList: classList,
  );
}
