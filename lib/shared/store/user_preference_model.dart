import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum GenderType { Male, Female, NonBinary }
enum ActivityType {
  Sedentary,
  LightActivity,
  ModeratelyActive,
  VeryActive,
  ExtremelyActive
}

enum WorkoutDayType { Sun, Mon, Tue, Wed, Thu, Fri, Sat }

enum WorkoutTypeType { Gym, Calisthenics, Home }

enum GoalType { Fatloss, MuscleGain, Maintain }

class Tile {
  IconData icon;
  String header;
  String description;
  Tile({
    required this.icon,
    required this.header,
    required this.description,
  });
}

class ActivityDetail extends Tile {
  ActivityType activityType;
  ActivityDetail(
      {required icon,
      required header,
      required description,
      required this.activityType})
      : super(icon: icon, header: header, description: description);
}

class GoalDetail extends Tile {
  GoalType goalType;
  GoalDetail(
      {required icon,
      required header,
      required description,
      required this.goalType})
      : super(icon: icon, header: header, description: description);
}

class WorkoutDay {
  WorkoutDayType workoutDayType;
  String title;
  WorkoutDay({required this.title, required this.workoutDayType});
}

class WorkoutType {
  WorkoutTypeType workoutTypeType;
  String title;
  String image;
  WorkoutType(
      {required this.title,
      required this.workoutTypeType,
      required this.image});
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

Map<ActivityType, ActivityDetail> _activityMap = {
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

Map<GoalType, GoalDetail> _goalMap = {
  GoalType.Fatloss: GoalDetail(
    header: "Fatloss",
    description: "Burn calories, burn fat",
    icon: Icons.access_time_filled_rounded,
    goalType: GoalType.Fatloss,
  ),
  GoalType.MuscleGain: GoalDetail(
    header: "Muscle Gain",
    description: "Gain muscle, gain strength",
    icon: Icons.access_alarm,
    goalType: GoalType.MuscleGain,
  ),
  GoalType.Maintain: GoalDetail(
    header: "Maintain",
    description: "Finding balance",
    icon: Icons.equalizer,
    goalType: GoalType.Maintain,
  )
};

Map<WorkoutDayType, WorkoutDay> _workoutDayMap = {
  WorkoutDayType.Sun: WorkoutDay(
    title: "Sun",
    workoutDayType: WorkoutDayType.Sun,
  ),
  WorkoutDayType.Mon: WorkoutDay(
    title: "Mon",
    workoutDayType: WorkoutDayType.Mon,
  ),
  WorkoutDayType.Tue: WorkoutDay(
    title: "Tue",
    workoutDayType: WorkoutDayType.Tue,
  ),
  WorkoutDayType.Wed: WorkoutDay(
    title: "Wed",
    workoutDayType: WorkoutDayType.Wed,
  ),
  WorkoutDayType.Thu: WorkoutDay(
    title: "Thu",
    workoutDayType: WorkoutDayType.Thu,
  ),
  WorkoutDayType.Fri: WorkoutDay(
    title: "Fri",
    workoutDayType: WorkoutDayType.Fri,
  ),
  WorkoutDayType.Sat: WorkoutDay(
    title: "Sat",
    workoutDayType: WorkoutDayType.Sat,
  ),
};

Map<WorkoutTypeType, WorkoutType> _workoutTypeMap = {
  WorkoutTypeType.Gym: WorkoutType(
    title: "Gym",
    workoutTypeType: WorkoutTypeType.Gym,
    image: 'assets/images/workout_type_gym.png',
  ),
  WorkoutTypeType.Calisthenics: WorkoutType(
    title: "Calisthenics",
    workoutTypeType: WorkoutTypeType.Calisthenics,
    image: 'assets/images/workout_type_calisthenics.png',
  ),
  WorkoutTypeType.Home: WorkoutType(
    title: "Home",
    workoutTypeType: WorkoutTypeType.Home,
    image: 'assets/images/workout_type_home.png',
  ),
};

class UserPreferenceModel extends ChangeNotifier {
  GenderType _gender = GenderType.Male;
  ActivityType _activity = ActivityType.Sedentary;
  GoalType _goal = GoalType.Fatloss;
  DateTime _dob = DateTime(DateTime.now().year - 16);
  bool _allowNotification = true;
  List<WorkoutDayType> _workoutDays = [];
  WorkoutTypeType _workoutType = WorkoutTypeType.Gym;

  setGender(GenderType gender) {
    _gender = gender;
    return notifyListeners();
  }

  GenderType getGender() {
    return _gender;
  }

  setActivity(ActivityType activity) {
    _activity = activity;
    return notifyListeners();
  }

  ActivityDetail getActivity() {
    return _activityMap[_activity]!;
  }

  Iterable<ActivityDetail> getAllActivities() {
    return _activityMap.values.toList();
  }

  setGoal(GoalType goal) {
    _goal = goal;
    return notifyListeners();
  }

  GoalDetail getGoal() {
    return _goalMap[_goal]!;
  }

  Iterable<GoalDetail> getAllGoals() {
    return _goalMap.values.toList();
  }

  DateTime getDob() {
    return _dob;
  }

  setDob(DateTime value) {
    _dob = value;
    return notifyListeners();
  }

  setNotification(bool allowNotifcation) {
    _allowNotification = allowNotifcation;
    return notifyListeners();
  }

  bool getNotification() {
    return _allowNotification;
  }

  setWorkoutDays(WorkoutDayType workoutDay, bool add) {
    if (add) {
      _workoutDays.add(workoutDay);
    } else {
      _workoutDays.removeWhere((element) => element == workoutDay);
    }
    return notifyListeners();
  }

  List<WorkoutDayType> getWorkoutDays() {
    return _workoutDays;
  }

  Iterable<WorkoutDay> getAllWorkoutDays() {
    return _workoutDayMap.values.toList();
  }

  setWorkoutType(WorkoutTypeType workoutType) {
    _workoutType = workoutType;
    return notifyListeners();
  }

  WorkoutType getWorkoutType() {
    return _workoutTypeMap[_workoutType]!;
  }

  Iterable<WorkoutType> getAllWorkoutTypes() {
    return _workoutTypeMap.values.toList();
  }
}
