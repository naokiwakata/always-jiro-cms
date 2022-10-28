import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 入力された文字列を管理する StateProvider。
final inputTextProvider = StateProvider.autoDispose<String>((_) => "");
