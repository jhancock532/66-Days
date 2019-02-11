import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import 'package:spe_66_days/classes/course/CourseEntry.dart';
import 'dart:io';

void main() {
  group("CourseEntry Decode JSON", () {
    test('Decode', () {
      String text = new File('../test_resources/CourseEntryDecode1.json').readAsStringSync();
      expect(CourseEntry.fromJson(json.decode(text)), equals(
        CourseEntry("Week Two - Eat Slowly and Savour Your Food", <CourseEntryItem>[
          CourseEntryChange("Experiments", "eat_slowly", "experimentTitle", <String>[
            "Put down your cutlery after each mouthful",
            "Eat with your non-dominant hand",
            "Set a chew goal per mouthful",
            "Halve every mouthful before you eat it",
            "Drink water between every mouthful",
            "Use chopsticks"
          ]),
          CourseEntryChange("Environment Design", "eat_slowly", "environmentDesign", <String>[
            "Eat your meals at a table. Never eat at your desk",
            "Eat in a calm environment",
            "Give yourself time to eat",
            "Don’t eat in front of a screen",
            "Eat with other people when possible",
            "Don't eat out of a packet - plate up everything, even if it's just a snack",
            "Try and relish what you're eating - be grateful and enjoy it!"
          ])
        ])
      ));
    });
  });
}