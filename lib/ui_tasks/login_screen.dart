
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants/AppColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isObscure = true;
  bool _isFinancialUnitHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          SvgPicture.asset('assets/svgs/logo.svg', width: 80, height: 80),
          const SizedBox(height: 32),
          Text(
            'Welcome Back!',
            style: TextStyle(fontSize: 32, color: AppColors.cobalt),
          ),
          const SizedBox(height: 8),
          Text(
            'Log back into your account',
            style: TextStyle(fontSize: 14, color: Colors.green),
          ),
          const SizedBox(height: 16),
          if (!_isFinancialUnitHidden)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 40,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.cloudBlue,
                    hint: Text(
                      'Financial Unit',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 40,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.cloudBlue,
                  hint: Text(
                    'User Id',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 40,
              child: TextField(
                obscureText: _isObscure,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                  prefixIcon: SizedBox(),
                  filled: true,
                  fillColor: AppColors.cloudBlue,
                  hint: Text(
                    'Password',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _isFinancialUnitHidden = !_isFinancialUnitHidden;
                  });
                },
                child: Text( _isFinancialUnitHidden ?
                  'More' : 'Less',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                      size: 32,
                      Icons.info_outline,
                      color: AppColors.cobalt)),
              const SizedBox(width: 32),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                      size: 32,
                      Icons.language,
                      color: AppColors.cobalt)),
              Spacer(),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Xiaomi M2007J20CG api.31',
            style: TextStyle(fontSize: 12, color: AppColors.cobalt),
          ),
          Text(
            '31.07.2025 APPDB-153',
            style: TextStyle(fontSize: 12, color: AppColors.cobalt),
          ),
          Text(
            'V.8.99.50 W.S.D Admin',
            style: TextStyle(fontSize: 12, color: AppColors.cobalt),
          ),
          Spacer(),
          Image.asset('assets/images/car.png', width: 100, height: 100)
        ],
      ),
    );
  }
}