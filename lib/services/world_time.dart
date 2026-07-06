import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String? time;
  String flag;
  String url;
  bool? isDaytime;

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      Response response = await get(
        Uri.parse('https://world-time-api3.p.rapidapi.com/timezone/$url'),
        headers: {
          'X-RapidAPI-Key': '3708561c19mshd7aac912a936864p14742cjsn46524f0b45cd',
          'X-RapidAPI-Host': 'world-time-api3.p.rapidapi.com',
        },
      );

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);

        String datetime = data['utc_datetime'];
        String offset = data['utc_offset'];

        DateTime now = DateTime.parse(datetime);

        int hours = int.parse(offset.substring(1, 3));
        int minutes = int.parse(offset.substring(4, 6));

        if (offset.startsWith('-')) {
          now = now.subtract(Duration(hours: hours, minutes: minutes));
        } else {
          now = now.add(Duration(hours: hours, minutes: minutes));
        }

        isDaytime = now.hour > 5 && now.hour < 19 ? true : false;

        time = DateFormat.jm().format(now);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }
}
