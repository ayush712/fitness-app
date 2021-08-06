import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum Gender { Male, Female, NonBinary }
enum ActivityType {
  Sedentary,
  LightActivity,
  ModeratelyActive,
  VeryActive,
  ExtremelyActive
}

class ActivityDetail {
  IconData icon;
  String header;
  String description;
  ActivityType activityType;
  ActivityDetail(
      {required this.icon,
      required this.header,
      required this.description,
      required this.activityType});
}

late Map<ActivityType, ActivityDetail> _activities = {
  ActivityType.Sedentary: ActivityDetail(
    header: 'sedentaryHeader', //AppLocalizations.of(context)!.sedentaryHeader,
    description:
        'sedentaryDescription', //AppLocalizations.of(context)!.sedentaryDescription,
    icon: Icons.access_time_filled_rounded,
    activityType: ActivityType.Sedentary,
  ),
  ActivityType.LightActivity: ActivityDetail(
    header:
        'lightActivityHeader', //AppLocalizations.of(context)!.lightActivityHeader,
    description:
        'lightActivityDescription', //AppLocalizations.of(context)!.lightActivityDescription,
    icon: Icons.access_alarm,
    activityType: ActivityType.LightActivity,
  ),
  ActivityType.ModeratelyActive: ActivityDetail(
    header:
        'moderateActivityHeader', //AppLocalizations.of(context)!.moderateActivityHeader,
    description:
        'moderateActivityDescription', //AppLocalizations.of(context)!.moderateActivityDescription,
    icon: CupertinoIcons.hand_thumbsup,
    activityType: ActivityType.ModeratelyActive,
  ),
  ActivityType.VeryActive: ActivityDetail(
    header:
        'veryActiveHeader', //AppLocalizations.of(context)!.veryActiveHeader,
    description:
        'veryActiveDescription', //AppLocalizations.of(context)!.veryActiveDescription,
    icon: Icons.thumb_up,
    activityType: ActivityType.VeryActive,
  ),
  ActivityType.ExtremelyActive: ActivityDetail(
    header:
        'extermelyActiveHeader', //AppLocalizations.of(context)!.extermelyActiveHeader,
    description:
        'extermelyActiveDescription', //AppLocalizations.of(context)!.extermelyActiveDescription,
    icon: CupertinoIcons.location_fill,
    activityType: ActivityType.ExtremelyActive,
  )
};

class UserPreferenceModel extends ChangeNotifier {
  Gender _gender = Gender.Male;
  ActivityType _activity = ActivityType.Sedentary;
  setGender(Gender gender) {
    _gender = gender;
    return notifyListeners();
  }

  Gender getGender() {
    return _gender;
  }

  setActivity(ActivityType activity) {
    _activity = activity;
    return notifyListeners();
  }

  ActivityDetail getActivity() {
    return _activities[_activity]!;
  }

  Iterable<ActivityDetail> getAllActivities() {
    return _activities.values.toList();
  }
}
