import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fithics_mobile/screens/sign_in/sign_in.dart';
import 'package:fithics_mobile/shared/components/button_wrapper/button_wrapper.dart';
import 'package:fithics_mobile/shared/constants/styles.dart';
import 'package:fithics_mobile/shared/store/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Slide {
  String imagePath;
  String header;
  String description;
  Slide(
      {required this.imagePath,
      required this.header,
      required this.description});
}

class Splash extends StatefulWidget {
  static const String id = 'splash';
  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: getImageSliders(),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.0,
                viewportFraction: 1,
                enlargeCenterPage: false,
                height: MediaQuery.of(context).size.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: getImageList().asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).primaryColor)
                              .withOpacity(_current == entry.key ? 1.0 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: kSpaceBetweenTwoFields * 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getButton(),
                  SizedBox(
                    height: kSpaceBetweenTwoFields * 2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  List<Slide> getImageList() {
    return [
      Slide(
        imagePath: 'assets/images/workout_pro.jpeg',
        header: AppLocalizations.of(context)!.workoutProHeader,
        description: AppLocalizations.of(context)!.workoutProDescription,
      ),
      Slide(
          imagePath: 'assets/images/daily_calorie_target.jpeg',
          header: AppLocalizations.of(context)!.dailyCalorieTargetsHeader,
          description:
              AppLocalizations.of(context)!.dailyCalorieTargetsDescription),
      Slide(
          imagePath: 'assets/images/diet_plan.jpeg',
          header: AppLocalizations.of(context)!.dietPlanHeader,
          description: AppLocalizations.of(context)!.dietPlanDescription),
    ];
  }

  List<Widget> getImageSliders() {
    return getImageList()
        .map(
          (item) => Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kSpaceBetweenTwoFields * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: kSpaceBetweenTwoFields * 2,
                ),
                Image.asset(item.imagePath),
                SizedBox(
                  height: kSpaceBetweenTwoFields * 4,
                ),
                Text(
                  item.header,
                  textAlign: TextAlign.center,
                  style: getHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
                SizedBox(
                  height: kSpaceBetweenTwoFields,
                ),
                Text(
                  item.description,
                  textAlign: TextAlign.center,
                  style: getSubHeaderStyle(
                      Provider.of<ThemeModel>(context).currentTheme),
                ),
              ],
            ),
          ),
        )
        .toList();
  }

  ButtonWrapper getButton() {
    return ButtonWrapper(
      buttonType: ButtonType.ElevatedButton,
      onPressed: () {
        Navigator.pushNamed(context, SignIn.id);
      },
      title: AppLocalizations.of(context)!.getStarted,
    );
  }
}

// Positioned(
//                       bottom: 0.0,
//                       left: 0.0,
//                       right: 0.0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               Color.fromARGB(200, 0, 0, 0),
//                               Color.fromARGB(0, 0, 0, 0)
//                             ],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topCenter,
//                           ),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                             vertical: 10.0, horizontal: 20.0),
//                         child: Text(
//                           'No. ${imgList.indexOf(item)} image',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     )