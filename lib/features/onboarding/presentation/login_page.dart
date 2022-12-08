import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:chigisoft_test/core/data_utils/validators.dart';
import 'package:chigisoft_test/core/reusables/button.dart';
import 'package:chigisoft_test/core/reusables/input_field.dart';
import 'package:chigisoft_test/core/reusables/loader_view.dart';
import 'package:chigisoft_test/core/reusables/my_toast.dart';
import 'package:chigisoft_test/core/size_config/config.dart';
import 'package:chigisoft_test/core/size_config/extensions.dart';
import 'package:chigisoft_test/features/dashboard/presentation/states/dashboard_cubit.dart';
import 'package:chigisoft_test/features/onboarding/presentation/states/onboarding_cubit.dart';
import 'package:chigisoft_test/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final onboardCubit = context.watch<OnboardingCubit>();
    final dashboardCubit = context.watch<DashboardCubit>();
    return LoaderLayout(
      loading: onboardCubit.state.isLoading,
      overlay: true,
      child: Scaffold(
        backgroundColor: ChigiColors.background,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          children: [
            SizedBox(height: 106.height),
            Container(
              height: 550,
              width: 339,
              padding: const EdgeInsets.only(left: 24, right: 24, top: 66),
              decoration: BoxDecoration(
                color: ChigiColors.white,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: ChigiColors.border, width: 1),
                boxShadow: const [
                  BoxShadow(
                    color: ChigiColors.shadow,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 126.2,
                      child: Image.asset(ministryIcon),
                    ),
                    const SizedBox(height: 56),
                    InputField(
                      label: "Email or Username",
                      hintText: "Enter your email",
                      controller: _usernameController,
                      validator: Validators.validateField,
                    ),
                    const SizedBox(height: 32),
                    InputField(
                      label: "Password",
                      hintText: "Enter your password",
                      controller: _passwordController,
                      validator: Validators.validatePassword,
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.normal,
                          color: ChigiColors.button,
                          fontSize: 14,
                          height: 1.57,
                        ),
                      ),
                    ),
                    const SizedBox(height: 56),
                    ChigiButton(
                      text: "Login",
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          await onboardCubit.login(
                            username: _usernameController.text.trim(),
                            password: _passwordController.text.trim(),
                          );
                          await dashboardCubit.getProducts();
                          if (onboardCubit.state.error == null) {
                            MyToast.show(
                              context: context,
                              text:
                                  "Welcome back ${onboardCubit.loggedUser?.firstName ?? ""} ${onboardCubit.loggedUser?.lastName ?? ""}",
                              isError: false,
                            );
                            // ignore: use_build_context_synchronously
                            Navigator.pushNamed(context, AppRoutes.homePage);
                          } else {
                            MyToast.show(
                                context: context,
                                text: onboardCubit.state.error!.message,
                                isError: true);
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
