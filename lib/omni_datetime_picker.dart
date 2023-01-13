/// A DateTime picker to pick a single DateTime or a DateTime range.
///
/// Use [showOmniDateTimePicker] to pick a single DateTime.
///
/// Use [showOmniDateTimeRangePicker] to pick a DateTime range.
///
library omni_datetime_picker;

import 'package:flutter/material.dart';

import 'src/omni_datetime_picker.dart';
import 'src/omni_datetime_range_picker.dart';

/// Show a dialog of the [OmniDateTimePicker]
///
/// Returns a List<DateTime> with startDateTime & endDateTime
///
Future<DateTime?> showOmniDateTimePicker({
  required BuildContext context,
  DateTime? startInitialDate,
  DateTime? startFirstDate,
  DateTime? startLastDate,
  OmniDateTimePickerType type = OmniDateTimePickerType.dateAndTime,
  bool? is24HourMode,
  bool? isShowSeconds,
  Color? primaryColor,
  Color? backgroundColor,
  Color? calendarTextColor,
  Color? tabTextColor,
  Color? unselectedTabBackgroundColor,
  Color? unselectedTabTextColor,
  Color? buttonTextColor,
  TextStyle? timeSpinnerTextStyle,
  TextStyle? timeSpinnerHighlightedTextStyle,
  Radius? borderRadius,
  int? minutesInterval,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return OmniDateTimePicker(
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        type: type,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        calendarTextColor: calendarTextColor,
        tabTextColor: tabTextColor,
        unselectedTabBackgroundColor: unselectedTabBackgroundColor,
        unselectedTabTextColor: unselectedTabTextColor,
        buttonTextColor: buttonTextColor,
        timeSpinnerTextStyle: timeSpinnerTextStyle,
        timeSpinnerHighlightedTextStyle: timeSpinnerHighlightedTextStyle,
        borderRadius: borderRadius,
        minutesInterval: minutesInterval,
      );
    },
  );
}

/// Show a dialog of the [OmniDateTimeRangePicker]
///
/// Returns a List<DateTime> with startDateTime & endDateTime
///
Future<List<DateTime>?> showOmniDateTimeRangePicker({
  required BuildContext context,
  DateTime? startInitialDate,
  DateTime? startFirstDate,
  DateTime? startLastDate,
  DateTime? endInitialDate,
  DateTime? endFirstDate,
  DateTime? endLastDate,
  OmniDateTimePickerType type = OmniDateTimePickerType.dateAndTime,
  bool? is24HourMode,
  bool? isShowSeconds,
  Color? primaryColor,
  Color? backgroundColor,
  Color? calendarTextColor,
  Color? tabTextColor,
  Color? unselectedTabBackgroundColor,
  Color? unselectedTabTextColor,
  Color? buttonTextColor,
  TextStyle? timeSpinnerTextStyle,
  TextStyle? timeSpinnerHighlightedTextStyle,
  Radius? borderRadius,
  int? minutesInterval,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return OmniDateTimeRangePicker(
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        endInitialDate: endInitialDate,
        endFirstDate: endFirstDate,
        endLastDate: endLastDate,
        type: type,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        primaryColor: primaryColor,
        backgroundColor: backgroundColor,
        calendarTextColor: calendarTextColor,
        tabTextColor: tabTextColor,
        unselectedTabBackgroundColor: unselectedTabBackgroundColor,
        unselectedTabTextColor: unselectedTabTextColor,
        buttonTextColor: buttonTextColor,
        timeSpinnerTextStyle: timeSpinnerTextStyle,
        timeSpinnerHighlightedTextStyle: timeSpinnerHighlightedTextStyle,
        borderRadius: borderRadius,
        minutesInterval: minutesInterval,
      );
    },
  );
}

/// Type of the [OmniDateTimePicker]
enum OmniDateTimePickerType {
  date,
  dateAndTime,
}