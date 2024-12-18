import 'package:clean_wash/core/colors_manger.dart';
import 'package:clean_wash/core/styels_manger.dart';
import 'package:clean_wash/features/registration/car_type/car_type_view.dart';
import 'package:clean_wash/features/registration/create_account/create_account_controller.dart';
import 'package:clean_wash/features/registration/signin/signin_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widgets/custom_buttom.dart';
import '../widgets/custom_textfield.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController repeatPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: ColorsManger.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.20,
              color: ColorsManger.darkblue,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                    top: 50.h,
                    bottom: screenHeight * 0.05,
                  ),
                  child: SizedBox(
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Create Account', style: StylesManager.headline3),
                        Text('Join us now!!! We wash cars, You relax',
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
                child: Form(key: formKey,
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text('Full name',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize:18.spMin),),
                      CustomTextField(
                        controller: fullNameController,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        hintText: 'Full name',
                      ),
                      SizedBox(height:10.h),
                      Text('Email',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize:18.spMin),),
                      CustomTextField(
                        controller: emailController,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        hintText: 'Email',

                      ),
                      SizedBox(height:10.h),
                      Text('Password',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize:18.spMin),),
                      CustomTextField(
                        controller: passwordController,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        hintText: 'Password',
                          obscureText: true,
                      ),
                      SizedBox(height:10.h),
                      Text('Repeat Password',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize:18.spMin),),
                      CustomTextField(
                        controller: repeatPasswordController,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        hintText: 'Repeat Password',
                        obscureText: true,
                      ),
                      SizedBox(height:10.h),
                      CustomButtom(
                        onTap: () {
                          // CreateAccountController().signUpWithEmailAndPassword(
                          //   context,
                          //   emailController.text,
                          //   passwordController.text,
                          //   fullNameController.text,
                          // );
                          Get.to(()=>CarTypeView());
                  // if (formKey.currentState!.validate()) {}
                        },
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        text: 'Create account',
                      ),
                     SizedBox(height: screenHeight * 0.030),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: StylesManager.bodyText3,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(const SigninView());
                            },
                            child: Text(
                              'Log In',
                              style: StylesManager.bodyText6,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
