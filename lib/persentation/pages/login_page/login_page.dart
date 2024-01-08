import 'dart:developer';

import 'package:flix_id_riverpod/domain/usecases/login/login.dart';
import 'package:flix_id_riverpod/domain/usecases/login/login_params.dart';
import 'package:flix_id_riverpod/persentation/providers/usecase/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main_page/main_page.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Login login = ref.watch(loginProvider);

            login
                .call(LoginParams(email: 'zero@gmail.com', password: '123456'))
                .then((result) {
              if (result.isSuccess) {
                log(result.resultValue.toString());
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MainPage(user: result.resultValue!)));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(result.errorMessage!)));
              }
            });
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
