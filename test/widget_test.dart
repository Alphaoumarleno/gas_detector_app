import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Test SharedPreferences sauvegarde et lecture', () async {
    // Initialisation des valeurs mock (vide)
    SharedPreferences.setMockInitialValues({});

    final prefs = await SharedPreferences.getInstance();

    // Écriture
    await prefs.setString('username', 'Alpha');

    // Lecture
    final username = prefs.getString('username');

    expect(username, 'Alpha');
  });
}
