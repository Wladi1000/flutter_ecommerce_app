import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/routes.dart';
import 'package:flutter_ecommerce_app/utils/helpers/client_token.dart';
import 'package:flutter_ecommerce_app/utils/http/fetcher_client.dart';
import 'package:flutter_ecommerce_app/utils/local_storage/storage_utility.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

ResponseSingle<ClientToken> userAuth(
    String displayName,
    String email,
    String photoUrl,
    String accessToken,
    BuildContext context,
    GoogleSignIn googleSignIn) async {
  const url = '/auth/google';
  final body = {
    "data": {
      "fullName": displayName,
      "email": email,
      "photo": photoUrl,
      "accessToken": accessToken,
    }
  };

  final res = await fetcherPublicApi.post(url, data: body);
  return ResponseSingleType.fromJson<ClientToken>(
      res.data, ClientToken.fromJson);
}

Future<void> handleSignIn(
    GoogleSignIn googleSignIn, BuildContext context) async {
  try {
    final auth = await googleSignIn.signIn();
    final authentication = await auth!.authentication;

    if (!context.mounted) return;

    final response = (await userAuth(
      auth.displayName ?? '',
      auth.email,
      auth.photoUrl ?? '',
      authentication.accessToken ?? '',
      context,
      googleSignIn,
    ));
    log('Response: $response');
    log('---------> ${authentication.idToken ?? 'No ID token'} <----------');

    if (response.data != null) {
      TLocalStorage.concurrentClientTokenString.set(response.data!.token);
      TLocalStorage.concurrentClientToken.set(response.data!);
      TLocalStorage.loggingIn?.set(true);
      await TLocalStorage.saveAllStates();
      if (!context.mounted) return;
      setupFetcherApi(response.data!.token);
      context.goNamed(Routes.home);
    } else {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to retrieve user data')),
      );
    }
  } catch (error) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $error')),
    );
  }
}
