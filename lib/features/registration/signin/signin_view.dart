import 'package:clean_wash/core/colors_manger.dart';
import 'package:clean_wash/core/styels_manger.dart';
import 'package:clean_wash/features/HomePage/Profile/edit%20profile/ChangePassword/Google%20password/Google%20password.dart';
import 'package:clean_wash/features/HomePage/Widgets/Customtext.dart';
import 'package:clean_wash/features/registration/create_account/create_account_view.dart';
import 'package:clean_wash/features/registration/signin/signin_controller.dart';
import 'package:clean_wash/features/registration/widgets/custom_buttom.dart';
import 'package:clean_wash/features/registration/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../HomePage/NaiveBar/Naivebar_view.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: ColorsManger.white,
      body: Stack(
            children: [
              SingleChildScrollView(
                child: Form(
                  key:formKey,
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.23,
                        color: ColorsManger.darkblue,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: screenWidth * 0.05,
                              right: screenWidth * 0.05,
                              top:50.h,
                              bottom: screenHeight * 0.05,
                            ),
                            child: SizedBox(
                              width: screenWidth,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sign In to your account',
                                      style: StylesManager.headline3),
                                  Text('Welcome back!',
                                      style: StylesManager.bodyText5),
                                  Text('Select method to log in',
                                      style: StylesManager.bodyText5),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: screenHeight,
                        decoration: BoxDecoration(
                          color: ColorsManger.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(screenWidth * 0.05),
                            topRight: Radius.circular(screenWidth * 0.05),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.04,
                            horizontal: screenWidth * 0.06,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize:18.spMin),),
                              CustomTextField(
                                controller:emailController,
                                screenHeight: screenHeight,
                                screenWidth: screenWidth,
                                hintText: 'Email',
                              ),
                              SizedBox(height: screenHeight * 0.032),
                              Text('Password',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize:18.spMin),),
                              CustomTextField(
                                controller: passwordController,
                                screenHeight: screenHeight,
                                screenWidth: screenWidth,
                                hintText: 'Password',
                                obscureText: true,
                              ),
                              Align(alignment:Alignment.topRight,
                                  child: TextButton(onPressed: (){
                                    Get.to(()=>Googlepass_view());
                                  },
                                      child:Text("Forgot Password?"))),
                              // SizedBox(height: screenHeight * 0.015),
                              CustomButtom(
                                onTap: () {
                             if (formKey.currentState!.validate()) {
                                  // signInWithEmailAndPassword();
                               Get.to(()=>NaivebarView());
                                }},
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                text: 'Log In',
                              ),
                              SizedBox(height: screenHeight * 0.030),
                              Center(
                                child: Text(
                                  'or login with',
                                  style: StylesManager.bodyText3,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.030),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // signInWithGoogle();
                                    },
                                    child: Image.asset(
                                      height: 40.h,
                                      'images/google_logo.svg.png',
                                    ),
                                  ),
                                  GestureDetector(
                                    child: SvgPicture.asset(
                                      height: 40.h,
                                      'images/facebook_logo.svg',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.030),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don\'t have an account? ',
                                    style: StylesManager.bodyText3,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => CreateAccountView());
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: StylesManager.bodyText6,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ));
  }
}
