import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBoldFontWeight,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Sign In to Continue',
              style: subtitleTextStyle.copyWith(
                color: subtitleColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 70),
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
                          focusedBorder: InputBorder.none,
                          hintText: 'Your Email Adress',
                          hintStyle: subtitleTextStyle,
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
                          focusedBorder: InputBorder.none,
                          hintText: 'Your Password',
                          hintStyle: subtitleTextStyle,
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

    Widget signInButton() {
      return Container(
        margin: const EdgeInsetsDirectional.only(top: defaultMargin),
        height: 50,
        width: double.infinity,
        child: TextButton(
          child: Text(
            'Sign In',
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
              "Don't have an account? ",
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/sign-up'),
              child: Text(
                'Sign Up',
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
              emailInput(),
              passwordInput(),
              signInButton(),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
