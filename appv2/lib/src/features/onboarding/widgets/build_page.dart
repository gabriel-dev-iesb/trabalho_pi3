import 'package:appv2/src/widgets/add_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

Widget buildPage(
        {bool isLastPage = false,
        // Color color,
        required String urlImage,
        required String title,
        required String subtitle}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      // color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            urlImage,
            fit: BoxFit.contain,
            width: 220,
          ),
          spacing(48),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          spacing(32),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          spacing(32),
          SizedBox(
              width: double.infinity,
              child: isLastPage
                  ? ElevatedButton(
                      onPressed: () {
                        Modular.to.pushNamed('/auth/login');
                      },
                      child: Text('page3-onboarding-button'.i18n()),
                    )
                  : null)
        ],
      ),
    );
