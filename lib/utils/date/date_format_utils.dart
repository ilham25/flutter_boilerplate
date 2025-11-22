
import 'package:intl/intl.dart';

final DateFormat formatterMonthYear = DateFormat('MMM yyyy',);

final DateFormat formatterClassic = DateFormat('yyyy-MM-dd');
final DateFormat formatterBarcode = DateFormat('ddMMyyyy');
final DateFormat formatterYearMonth = DateFormat('yyyy-MM');
final DateFormat formatterClassicDot = DateFormat('dd.MM.yyyy');
final DateFormat formatterClassicTime = DateFormat('yyyy-MM-dd HH:mm:ss');
final DateFormat formatterClassicTimes = DateFormat('yyyy-MM-dd HH:mm');
final DateFormat formatterDate = DateFormat('dd MMM yyyy, HH:mm', "id");
final DateFormat formatterTracking = DateFormat('HH:mm, dd MMM yyyy', "id");
final DateFormat formatterDateNormal = DateFormat('dd MMMM yyyy', "id");
final DateFormat formatterDateMonth = DateFormat('d MMM', "id");
final DateFormat formatterMonth = DateFormat('MMM', "id");

final DateFormat formatterDateSort = DateFormat('dd MMM yyyy', "id");
final DateFormat formatterDateMonthYear = DateFormat('MMMM yyyy', "id");
final DateFormat formatterTime = DateFormat("HH:mm:ss");
final DateFormat formatterTimeMinute = DateFormat("HH:mm");
final DateFormat formatterTimeOnly = DateFormat.Hm();
final DateFormat formatDay = DateFormat('d');
final DateFormat formatDate = DateFormat('dd');
final DateFormat formatDateMonth = DateFormat('dd MMM', "id");

final DateFormat formatDayName = DateFormat('EEEE', "id");
final DateFormat formatDayNameSort = DateFormat('EEE', "id");
final DateFormat formatFull = DateFormat('EEEE, dd MMMM yyyy', "id");
final DateFormat formatFullTime = DateFormat('dd MMMM yyyy HH:mm', "id");
final DateFormat formatterTimeDisplay = DateFormat("HH:mm");
final DateFormat formatterClassicSlash = DateFormat('dd/MM');


String formatDateTime(DateTime dateTime) {
  // Menggunakan paket intl untuk format tertentu
  final formatter = DateFormat("yyyy-MM-ddTHH:mm:ss.SSS'Z'");
  // Mengonversi DateTime menjadi string sesuai format
  String formattedDateTime = formatter.format(dateTime);
  return formattedDateTime;
}