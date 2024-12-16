import 'dart:async';

import 'package:express/common/const/app_styles.dart';
import 'package:express/feature/auth/data/params/otp_params.dart';
import 'package:express/feature/auth/widget/auth_scope.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController otpController;
  late Timer _timer;
  int _start = 299;

  @override
  void initState() {
    super.initState();
    otpController = TextEditingController();
    _startTimer();
  }

  @override
  void dispose() {
    otpController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 6),
            const Text('Код подтверждения', style: TextStyles.semiBold18),
            const SizedBox(height: 16),
            Text('Мы отправили SMS с кодом на номер\n${widget.phoneNumber}. Введите его ниже',
                textAlign: TextAlign.center,
                style: TextStyles.medium13.copyWith(color: AppColors.black)),
            const SizedBox(height: 16),
            Pinput(
              length: 6,
              controller: otpController,
              defaultPinTheme: PinTheme(
                width: 50,
                height: 60,
                textStyle: const TextStyle(fontSize: 20, color: AppColors.black),
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.transparent),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 50,
                height: 60,
                textStyle: const TextStyle(fontSize: 20, color: AppColors.black),
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.pumpkin, width: 2),
                ),
              ),
              submittedPinTheme: PinTheme(
                width: 50,
                height: 60,
                textStyle: const TextStyle(fontSize: 20, color: AppColors.black),
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: AppColors.pumpkin),
                ),
              ),
              onCompleted: (pin) {
                final formattedPhone = widget.phoneNumber.replaceAll(RegExp(r'\D'), '');
                final params = OtpParams(phone: formattedPhone, code: pin);
                AuthScope.controllerOf(context).checkOtp(params);
              },
            ),
            const SizedBox(height: 16),
            Text(_start > 0 ? 'Отправить снова ${_formatTime(_start)}' : 'Отправить снова',
                style: TextStyles.medium15.copyWith(color: AppColors.grey)),
          ],
        ),
      ),
    );
  }
}
