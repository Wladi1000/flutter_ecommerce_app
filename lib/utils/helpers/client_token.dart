import 'package:flutter_ecommerce_app/common/models/client.dart';

class ClientToken {
  String token;
  Client user;

  ClientToken({required this.token, required this.user});

  factory ClientToken.fromJson(Map<String, dynamic> json) {
    return ClientToken(
      token: json['token'],
      user: Client.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'user': user.toJson(),
    };
  }
}