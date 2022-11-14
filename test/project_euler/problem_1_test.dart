import 'package:dart_algorithms/project_euler/problem_1.dart';
import 'package:test/test.dart';

void main() {
  test('multiplesOf3and5(10) should return a number.', () {
    final result = multiplesOf3and5(10);
    expect(result, 23);
  });
  test('multiplesOf3and5(49) should return 543.', () {
    final result = multiplesOf3and5(49);
    expect(result, 543);
  });
  test('multiplesOf3and5(1000) should return 233168.', () {
    final result = multiplesOf3and5(1000);
    expect(result, 233168);
  });
  test('multiplesOf3and5(8456) should return 16687353.', () {
    final result = multiplesOf3and5(8456);
    expect(result, 16687353);
  });
  test('multiplesOf3and5(19564) should return 89301183.', () {
    final result = multiplesOf3and5(19564);
    expect(result, 89301183);
  });
}
