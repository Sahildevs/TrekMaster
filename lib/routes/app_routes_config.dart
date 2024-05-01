import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:trek_master/routes/app_routes_constants.dart';
import 'package:trek_master/ui/auth/otpAuth/otp_auth_screen.dart';
import 'package:trek_master/ui/dashboard/dashboard_screen.dart';
import 'package:trek_master/ui/intro/intro_screen.dart';
import 'package:trek_master/ui/splash/splash_screen.dart';
import '../ui/auth/phoneAuth/phone_auth_screen.dart';

// ('/') identifies as the default or the initial route when the app starts

final GoRouter goRouter = GoRouter(
    routes: <GoRoute>[

      /** Top-Level Route **/
      GoRoute(
          path: '/',
          name: AppRouteConstants.splashScreenRoute,
          builder: (context, state) {
            return const SplashScreen();
          },
          routes: [
            /** Sub-Routes for this particular top-level route, defined here **/
          ]
      ),

      /** Top-Level Route **/
      GoRoute(
          path: '/intro',
          name: AppRouteConstants.introScreenRoute,
          builder: (context, state) {
            return const IntroScreen();
          },
      ),

      /** Top-Level Route **/
      GoRoute(
        path: '/phoneAuth',
        name: AppRouteConstants.phoneAuthScreenRoute,
        builder: (context, state) {
          return const PhoneAuthScreen();
        },
        routes: [
          /** Sub-Routes for this particular top-level route, defined here **/
          // NOTE : SUB-ROUTES cannot start or end with a '/'
          GoRoute(
              path: 'otpAuth',
            name: AppRouteConstants.otpAuthScreenRoute,
            builder: (context, state) {
                return const OtpAuthScreen();
            }
          )
        ]
      ),

      /** Top-Level Route **/
      GoRoute(
          path: '/dashboard',
          name: AppRouteConstants.dashboardScreenRoute,
          builder: (context, state) {
            return const DashboardScreen();
          }
      )


    ]
);