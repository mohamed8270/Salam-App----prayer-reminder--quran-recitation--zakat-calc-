import 'package:flutter/material.dart';
import 'package:salamapp/auth_services.dart';
import 'package:salamapp/theme/colors.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kblack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
          child: Column(
            children: [
              Text(
                'Al Hudha',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Kred,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Indeed, Allah does not do injustice, [even] as much as an atom's weight while if there is a good deed, He multiplies it and gives from Himself a great reward",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Kwhite.withOpacity(0.3),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: KBlack,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/mecca1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  AuthService().signInWithGoogle();
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Kwhite.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 24,
                        width: 24,
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Kwhite,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
