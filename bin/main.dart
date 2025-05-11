import 'package:jh_timetable/html.dart';
import 'package:jh_timetable/parse.dart';

void main(List<String> arguments) {
  final data = parseJhTiemeTableFromHtml(html);
  for (var element in data) {
    print(element);
  }
}
