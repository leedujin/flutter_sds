import "package:flutter/material.dart";
import "package:lee_project/bookAppointment.dart";
import "package:sizer/sizer.dart";
import "package:lee_project/constants/imageConstant.dart";
import "package:lee_project/constants/constants.dart";
import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:tflite_flutter/tflite_flutter.dart" as tfl;
import "package:lee_project/responsive.dart";

import "list.dart";

class DiagnosePage extends StatefulWidget {
  final double age;
  final double height;
  final double weight;
  final double pregnant;
  final double skin;
  final double insulin;
  final double glucose;
  final double blood;
  final double gender;
  final double choles;
  final double smoke;
  final double alcohol;

  DiagnosePage({required this.age,
  required this.height,
  required this.weight,
  required this.pregnant,
  required this.skin,
  required this.insulin,
  required this.glucose,
  required this.blood,
  required this.gender,
  required this.choles,
  required this.smoke,
  required this.alcohol
});

  @override
  _DiagnosePageState createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {
  var outputDiabetes;
  var outputCardio;

  void run1() async {
    final modelDiabetes = await tfl.Interpreter.fromAsset("assets/diabetes/model_diabetes.tflite");
    var inputDiabetes = [
        widget.pregnant / 17,
        widget.glucose / 199,
        widget.blood / 122,
        widget.skin / 99,
        widget.insulin / 846,
        (widget.weight / ((widget.height / 100) * (widget.height / 100))) / 67.1,
        widget.age / 81,
    ];
    var output = List.filled(1, 0).reshape([1, 1]);
    modelDiabetes.run(inputDiabetes, output);
    var output0 = output[0][0]*100;
    var output1 = output0.floor();
    setState(() {
      outputDiabetes = "$output1";
    });
  }


  void run2() async {
    final modelDiabetes = await tfl.Interpreter.fromAsset("assets/diabetes/model_diabetes.tflite");
    var inputCardio = [
      widget.age*365 / 17,
      widget.gender / 2,
      widget.height / 250,
      widget.weight / 200,
      widget.blood / 11000,
      widget.choles / 3,
      widget.glucose / 199,
      widget.smoke,
      widget.alcohol,
    ];
    var output = List.filled(1, 0).reshape([1, 1]);
    modelDiabetes.run(inputCardio, output);
    var output0 = output[0][0]*100;
    var output1 = output0.floor();
    setState(() {
      outputCardio = "$output1";
    });
  }

  void run3() {
    print(outputDiabetes.runtimeType);
    print(outputDiabetes);
  }

  void run4() {
    print(outputCardio);
    print(outputCardio.runtimeType);
  }

  void initState() {
    super.initState();
    run1();
    run2();

    run3();
    run4();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          color: tPrimaryColor,
          title: 'in_house_medical',
          debugShowCheckedModeBanner: false,
          //suseInheritedMediaQuery: true,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(secondary: tGreen),

            primarySwatch: Colors.blue,
          ),
          home: AnimatedSplashScreen(
              duration: 5000,
              splash: Column(
                children: [
                  Image.asset(
                    Images.DOCTOR,
                    scale: 3.7,
                  ),
                  Text("Diagnosing....",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: tGreen,
                        fontSize: 40),
                  ),
                ],),
              splashIconSize: 300,
              nextScreen: ResultPage(outputDiabetes, outputCardio),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.white),
        );
      },
    );
  }
}

class ResultPage extends StatelessWidget {
  final String diabetes;
  final String cardio;

  ResultPage(this.diabetes, this.cardio);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        backgroundColor: tWhite,
        foregroundColor: tGreen,
        elevation: 1,
        centerTitle: true,
        title: Text("All Body"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [tCardBoxShadow], color: tWhite,
                    borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Hi,',
                            style: TextStyle(
                              fontSize: isTab(context) ? 13.sp : 16.sp,
                              fontWeight: FontWeight.w400,
                              color: tBlack
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        SizedBox(
                          height: 1.8.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text(
                                'Your Result',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 16.sp : 19.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'IS...',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 16.sp : 19.sp,
                                    fontWeight: FontWeight.w500,color: tPrimaryColor),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                        ),
              SizedBox(
                height: 20,
              ),
                Card(
                  child:
                  Column(
                    children: [
                      Text(
                        "Diabetes",
                        style: TextStyle(
                          fontSize: 6.h,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        Images.DIABETIS,
                        scale: 1,
                      ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          diabetes,
                          style: TextStyle(
                            fontSize: 4.h,
                            fontWeight: FontWeight.w400
                          ),
                      ),
                        Text(
                            "%",
                          style: TextStyle(
                              fontSize: 4.h,
                              fontWeight: FontWeight.w400
                          ),
                        )],
                    ),
                    ],
                  )

              ),
              SizedBox(
                height: 50,
              ),
              Card(
                  child:
                  Column(
                    children: [
                      Text(
                        "Cardiovascular",
                        style: TextStyle(
                            fontSize: 5.h,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "disease",
                        style: TextStyle(
                            fontSize: 5.h,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        Images.HEART,
                        scale: 1,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cardio,
                            style: TextStyle(
                                fontSize: 4.h,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            "%",
                            style: TextStyle(
                                fontSize: 4.h,
                                fontWeight: FontWeight.w400
                            ),
                          )],
                      ),
                    ],
                  )

              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child:
                Card(
                  elevation: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookAppointmentScreen(index: 0,))
                      );
                    },
                    child: Image.asset(
                      Images.APPOINTMENT,
                      scale: 2,
                      color: tGreen,
                    ),
                  ),
                )
                ,
              )
                      ],
            ),
        ),
    ),
    ) ;
  }
}

