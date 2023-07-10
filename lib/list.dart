import 'package:flutter/material.dart';
import 'package:lee_project/constants/constants.dart';
import 'package:lee_project/list2.dart';
import 'package:sizer/sizer.dart';
import 'package:lee_project/constants/imageConstant.dart';
import 'package:lee_project/responsive.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "list",
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey();

  final _pregnantController = TextEditingController();
  final _glucoseController = TextEditingController();
  final _bloodpressController = TextEditingController();
  final _skinthickController = TextEditingController();
  final _insulinController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _genderController = TextEditingController();
  final _ageController = TextEditingController();
  final _cholesController = TextEditingController();
  final _smokeController = TextEditingController();
  final _alcoholContoller = TextEditingController();

  @override
  void dispose() {
    _pregnantController.dispose();
    _glucoseController.dispose();
    _bloodpressController.dispose();
    _skinthickController.dispose();
    _insulinController.dispose();
    _genderController.dispose();
    _ageController.dispose();
    _cholesController.dispose();
    _smokeController.dispose();
    _alcoholContoller.dispose();
    _weightController.dispose();
    _heightController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
        backgroundColor: tGreen,
        title: Text('Insert your Health Information',
        style: TextStyle(fontWeight: FontWeight.w600),),
        leading: Image.asset(Images.FULLBODY),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 2.h),
            Row(children: [
              Text(
                  "All Body",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w700,
                      fontSize: isTab(context) ? 16.sp : 20.sp)
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                  "diagnosis",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w700,
                      fontSize: isTab(context) ? 12.sp : 8.sp)
              ),
            ],),
            SizedBox(height: 2.h),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Age',
                    labelText: 'Age(years)'
                ),
                keyboardType: TextInputType.number,
                controller: _ageController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Female : 1, Male : 2',
                    labelText: 'Gender'
                ),
                keyboardType: TextInputType.number,
                controller: _genderController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Height',
                    labelText: 'Height(cm)'
                ),
                keyboardType: TextInputType.number,
                controller: _heightController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required Fields";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0)
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: tBorderColor, width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Weight',
                      labelText: 'Weight(kg)'
                  ),
                  keyboardType: TextInputType.number,
                  controller: _weightController
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0)
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: tBorderColor, width: 1.5
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: 'Optional',
                  labelText: 'Number of Pregnacies'
              ),
                keyboardType: TextInputType.number,
                controller: _pregnantController,
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Concentration of Glucose',
                    labelText: 'Plasma glucose concentration'
                ),
                keyboardType: TextInputType.number,
                controller: _glucoseController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'BloodPressure',
                    labelText: 'BloodPressure(mmHg)'
                ),
                keyboardType: TextInputType.number,
                controller: _bloodpressController,
              ),

            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'SkinThickness',
                    labelText: 'Triceps skin fold thickness(mm)'
                ),
                  keyboardType: TextInputType.number,
                  controller: _skinthickController,
              ),

            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Insulin',
                    labelText: '2-Hour serum insulin'
                ),
                  keyboardType: TextInputType.number,
                  controller: _insulinController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Required Fields";
                    } else
                      return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0)
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: tBorderColor, width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: 'Smoking : 1, No Smoking : 0',
                      labelText: 'Smoking(all-time)'
                  ),
                  keyboardType: TextInputType.number,
                  controller: _smokeController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Alcohol : 1, No Alcohol : 0',
                    labelText: 'Alcohol(normally)'
                ),
                keyboardType: TextInputType.number,
                controller: _alcoholContoller,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Required Fields";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: tBorderColor, width: 1.5
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Normal : 1, Above : 2, Well Above : 3',
                    labelText: 'Cholesterol'
                ),
                keyboardType: TextInputType.number,
                controller: _cholesController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiagnosePage(
                      age : double.parse(_ageController.text.trim()),
                      height : double.parse(_heightController.text.trim()),
                      weight : double.parse(_weightController.text.trim()),
                      pregnant: double.parse(_pregnantController.text.trim()),
                      skin: double.parse(_skinthickController.text.trim()),
                      insulin: double.parse(_insulinController.text.trim()),
                      glucose : double.parse(_glucoseController.text.trim()),
                      blood: double.parse(_bloodpressController.text.trim()),
                      gender: double.parse(_genderController.text.trim()),
                      choles: double.parse(_cholesController.text.trim()),
                      smoke: double.parse(_smokeController.text.trim()),
                      alcohol: double.parse(_alcoholContoller.text.trim()),
                    ))
                );
              },
              child: Container(
                alignment: Alignment.center,
                width:isTab(context)?100 : 60,
                height:isTab(context)?40 : 25,
                decoration: BoxDecoration(
                    color: tlightGray,
                    borderRadius:
                    BorderRadius.circular(10)),
                child: Text(
                  "Next",
                  style: TextStyle(color: tWhite,fontSize:  12.sp),
                ),
              ),
            ),
          ],
        ),)
      )
      ),
        );
  }
}

