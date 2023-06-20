import 'package:dart_algorithms/data_structures/stack/stack.dart';

/*
Check for balanced parentheses. Given a string, check if there are ( and ) characters,
and return true if the parentheses in the string are balanced. For example:
 */

bool checkBalancedParentheses(String value) {
  final stack = Stack();

  for (var ele in value.split('')) {
    if (ele == '(') {
      stack.push(ele);
    } else if (ele == ')') {
      if (stack.isEmpty) return false;
      stack.pop();
    }
  }

  return stack.isEmpty;
}
/*
Check for Balanced Brackets in an expression (well-formedness)*

**Input: exp = “[()]{}{[()()]()}” **Output: Balanced
**Input: exp = “[(])” **Output: Not Balanced
 */