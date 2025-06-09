import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('Test de sauvegarde et lecture avec SharedPreferences', () async {
    // Mock les valeurs initiales
    SharedPreferences.setMockInitialValues({});

    final prefs = await SharedPreferences.getInstance();

    // Sauvegarde d'une valeur
    await prefs.setString('username', 'Alpha');

    // Lecture de la valeur sauvegardée
    final username = prefs.getString('username');

    expect(username, 'Alpha');
  });
}
