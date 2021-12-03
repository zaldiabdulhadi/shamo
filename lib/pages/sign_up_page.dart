import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBoldFontWeight,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Register and Happy Shopping',
              style: subtitleTextStyle.copyWith(
                color: subtitleColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: mediumFontWeight,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/fullname_icon.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Your Full Name',
                          hintStyle: subtitleTextStyle,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: mediumFontWeight,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/username_icon.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Your Username',
                          hintStyle: subtitleTextStyle,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: mediumFontWeight,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/email_icon.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Your Email Adress',
                          hintStyle: subtitleTextStyle,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: mediumFontWeight,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 50,
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/password_icon.png',
                      width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Your Password',
                          hintStyle: subtitleTextStyle,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        margin: const EdgeInsetsDirectional.only(top: defaultMargin),
        height: 50,
        width: double.infinity,
        child: TextButton(
          child: Text(
            'Sign Up',
            style: primaryColorTextStyle.copyWith(
                fontSize: 16, fontWeight: mediumFontWeight),
          ),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: primaryColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Text(
                'Sign In',
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: mediumFontWeight,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
