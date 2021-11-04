// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "enterPassword": MessageLookupByLibrary.simpleMessage("Nhập mật khẩu"),
        "enterUsername":
            MessageLookupByLibrary.simpleMessage("Nhập tên đăng nhập"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Quên mật khẩu?"),
        "hello": MessageLookupByLibrary.simpleMessage("Xin chào"),
        "login": MessageLookupByLibrary.simpleMessage("Đăng nhập"),
        "password": MessageLookupByLibrary.simpleMessage("Mật khẩu"),
        "register": MessageLookupByLibrary.simpleMessage("Đăng ký"),
        "userName": MessageLookupByLibrary.simpleMessage("Tên đăng nhập"),
        "youDoNotHaveAccount":
            MessageLookupByLibrary.simpleMessage("Bạn chưa có tài khoản?")
      };
}
