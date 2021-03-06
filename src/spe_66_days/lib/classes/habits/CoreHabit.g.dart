// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CoreHabit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreHabit _$CoreHabitFromJson(Map<String, dynamic> json) {
  return CoreHabit(json['title'] as String, json['experimentTitle'] as String,
      key: json['key'] as String,
      environmentDesign: json['environmentDesign'] as String,
      reminders: (json['reminders'] as List)
          ?.map((e) => e == null
              ? null
              : NotificationConfig.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      startDate: json['startDate'] == null ? null : DateTime.parse(json['startDate'] as String),
      markedOff: json['markedOff'] != null && json['markedOff'] is List ? HashSet.from((json['markedOff'] as List)
          ?.map((e) => e == null ? null : Global.stripTime(DateTime.parse(e as String)?.toUtc()))): null);
          //?.toSet());
}

Map<String, dynamic> _$CoreHabitToJson(CoreHabit instance) {
    var markedOff = instance.markedOff?.map((e) => e?.toUtc()?.toIso8601String())?.toList();
    markedOff.sort((a,b) => a.compareTo(b));
    return <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'experimentTitle': instance.experimentTitle,
      'environmentDesign': instance.environmentDesign,
      'reminders': instance.reminders,
      'markedOff': markedOff,
      'startDate': instance.startDate?.toUtc()?.toIso8601String(),
    };
}
