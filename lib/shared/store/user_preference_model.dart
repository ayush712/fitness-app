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

// Map<ActivityType, ActivityDetail> _activities = {
//   ActivityType.Sedentary: ActivityDetail(
//     header: 'sedentaryHeader', //AppLocalizations.of(context)!.sedentaryHeader,
//     description:
//         'sedentaryDescription', //AppLocalizations.of(context)!.sedentaryDescription,
//     icon: Icons.access_time_filled_rounded,
//     activityType: ActivityType.Sedentary,
//   ),
//   ActivityType.LightActivity: ActivityDetail(
//     header:
//         'lightActivityHeader', //AppLocalizations.of(context)!.lightActivityHeader,
//     description:
//         'lightActivityDescription', //AppLocalizations.of(context)!.lightActivityDescription,
//     icon: Icons.access_alarm,
//     activityType: ActivityType.LightActivity,
//   ),
//   ActivityType.ModeratelyActive: ActivityDetail(
//     header:
//         'moderateActivityHeader', //AppLocalizations.of(context)!.moderateActivityHeader,
//     description:
//         'moderateActivityDescription', //AppLocalizations.of(context)!.moderateActivityDescription,
//     icon: CupertinoIcons.hand_thumbsup,
//     activityType: ActivityType.ModeratelyActive,
//   ),
//   ActivityType.VeryActive: ActivityDetail(
//     header:
//         'veryActiveHeader', //AppLocalizations.of(context)!.veryActiveHeader,
//     description:
//         'veryActiveDescription', //AppLocalizations.of(context)!.veryActiveDescription,
//     icon: Icons.thumb_up,
//     activityType: ActivityType.VeryActive,
//   ),
//   ActivityType.ExtremelyActive: ActivityDetail(
//     header:
//         'extermelyActiveHeader', //AppLocalizations.of(context)!.extermelyActiveHeader,
//     description:
//         'extermelyActiveDescription', //AppLocalizations.of(context)!.extermelyActiveDescription,
//     icon: CupertinoIcons.location_fill,
//     activityType: ActivityType.ExtremelyActive,
//   )
// };

Map<ActivityType, ActivityDetail> _activities = {
  ActivityType.Sedentary: ActivityDetail(
    header: "Sedentary",
    description: "Honestly, I’m not active at all.",
    icon: Icons.access_time_filled_rounded,
    activityType: ActivityType.Sedentary,
  ),
  ActivityType.LightActivity: ActivityDetail(
    header: "Light activity",
    description: "I do light activities.",
    icon: Icons.access_alarm,
    activityType: ActivityType.LightActivity,
  ),
  ActivityType.ModeratelyActive: ActivityDetail(
    header: "Moderately active",
    description: "I work out on ocassion but I want to step it up.",
    icon: CupertinoIcons.hand_thumbsup,
    activityType: ActivityType.ModeratelyActive,
  ),
  ActivityType.VeryActive: ActivityDetail(
    header: "Very active",
    description: "I work out often and it’s fairly big part of my life.",
    icon: Icons.thumb_up,
    activityType: ActivityType.VeryActive,
  ),
  ActivityType.ExtremelyActive: ActivityDetail(
    header: "Extemely active",
    description: "I’m in gret shape and working out is massive for me.",
    icon: CupertinoIcons.location_fill,
    activityType: ActivityType.ExtremelyActive,
  )
};

class UserPreferenceModel extends ChangeNotifier {
  Gender _gender = Gender.Male;
  ActivityType _activity = ActivityType.Sedentary;
  DateTime _dob = DateTime(DateTime.now().year - 16);

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

  getDob() {
    return _dob;
  }

  setDob(DateTime value) {
    _dob = value;
    return notifyListeners();
  }
}
