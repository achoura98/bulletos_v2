import 'package:bulletos_v2/config/theme/theme.dart';
import 'package:bulletos_v2/routes.dart';
import 'package:bulletos_v2/src/presentation/bloc/Bloc_provider.dart';
import 'package:bulletos_v2/src/presentation/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
          builder: (context, child) => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                themeMode: ThemeMode.system,
                theme: BAppTheme.lightTheme,
                darkTheme: BAppTheme.darkTheme,
                initialRoute: SplashScreen.routeName,
                routes: routes,
              )),
    );
  }
}
