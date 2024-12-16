import 'package:express/common/utils/extension/context_extension.dart';
import 'package:flutter/material.dart';

abstract class InfoScopeController {
  void showErrorSnackBar(String text);

  void showSuccessSnackBar(String text);
}

class InfoScope extends StatefulWidget {
  final Widget child;

  const InfoScope({required this.child, super.key});

  static InfoScopeController of(BuildContext context) =>
      context.inhOf<_InheritedInfoScope>().controller;

  @override
  State<InfoScope> createState() => _InfoScopeState();
}

class _InfoScopeState extends State<InfoScope> implements InfoScopeController {
  @override
  Widget build(BuildContext context) => _InheritedInfoScope(controller: this, child: widget.child);

  @override
  void showErrorSnackBar(String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 5,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Theme.of(context).colorScheme.background,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        content: Row(
          children: [
            const Icon(Icons.error_outline, color: Colors.redAccent),
            const SizedBox(width: 15),
            Expanded(
                child: Text(
              error,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )),
          ],
        ),
      ),
    );
  }

  @override
  void showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 5,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.greenAccent,
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(20),
        content: Row(
          children: [
            const Icon(Icons.check_circle_outline, color: Colors.white),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InheritedInfoScope extends InheritedWidget {
  final InfoScopeController controller;

  const _InheritedInfoScope({required this.controller, required super.child});

  @override
  bool updateShouldNotify(_InheritedInfoScope oldWidget) => false;
}
