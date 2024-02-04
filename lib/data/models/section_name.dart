import 'package:isar/isar.dart';

part 'section_name.g.dart';

@collection
class SectionName {
  SectionName(this.name) : id = name.hashCode;
  @Index(type: IndexType.value)
  String name;
  Id id;
}
