import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mooovie_app/Screens/alert_exp.dart';
import 'package:mooovie_app/Screens/chat.dart';
import 'package:mooovie_app/Screens/chat_bis.dart';
import 'package:mooovie_app/Screens/chat_unveil.dart';
import 'package:mooovie_app/Screens/chat_unveiled.dart';
import 'package:mooovie_app/Screens/completeprofile.dart';
import 'package:mooovie_app/Screens/drive_alert.dart';
import 'package:mooovie_app/Screens/drive_alert2.dart';
import 'package:mooovie_app/Screens/group_call.dart';
import 'package:mooovie_app/Screens/group_chat.dart';
import 'package:mooovie_app/Screens/home_moovy_filter.dart';
import 'package:mooovie_app/Screens/home_movy_filteroff.dart';
import 'package:mooovie_app/Screens/loginwith.dart';
import 'package:mooovie_app/Screens/medium_choose.dart';
import 'package:mooovie_app/Screens/select_one_user.dart';
import 'package:mooovie_app/Screens/setprofile.dart';
import 'package:mooovie_app/Screens/signupnow.dart';
import 'package:mooovie_app/Screens/single_call.dart';
import 'package:mooovie_app/Screens/single_call_unveil.dart';
import 'package:mooovie_app/Screens/singlr_call_unveiled.dart';
import 'package:mooovie_app/Screens/temporary_home_page.dart';
import 'package:mooovie_app/Constants/routes.dart';
import 'Screens/welcome.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(child: WelcomeScreen()),
        routes: {
          welcomeView: (context) => const WelcomeScreen(),
          signUpNow: (context) => const SignUpNow(),
          signUpNow2: (context) => const WelcomeScreen(),
          setProfile: (context) => const SetProfile(),
          logInWitView: (context) => const LoginWithSocialLogin(),
          completeProfile: (context) => CompleteProfile(),
          alertexp1: (context) => const AlertExp(),
          chatbiss: (context) => const ChatBis(),
          temporaryhomepage: (context) => const TemporaryHomePage(),
          mediumchoose: (context) => const MediumChoose(),
          drivealert: (context) => const DriveAlert(),
          drivealert2: (context) => const DriveALert2(),
          singleCall: (context) => const SingleCall(),
          homeMoovyFulter: (context) => const HomeMoovyFulter(),
          selectOneUser: (context) => const SelectOneUser(),
          groupCall:(context) => const GroupCall(),
          homeMoovyFulterOff:(context) => const HomeMoovyFulterOff(),
          chat:(context) => const Chat(),
          groupchat:(context) => const GroupChat(),
          singleCallUnveil:(context) => const SingleCallUnveil(),
          chatUnveil:(context) => ChatUnveil(),
          singleCallUnveiled:(context) => SingleCallUnveiled(),
          chatunveiled:(context) => ChatUnveiled(),
        });
  }
}
