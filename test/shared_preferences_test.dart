import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding
      .ensureInitialized(); // Important pour init Flutter bindings

  test('Test de sauvegarde et lecture avec SharedPreferences', () async {
    // Mock des valeurs initiales vides
    SharedPreferences.setMockInitialValues({});

    // Obtention de l'instance partagée
    final prefs = await SharedPreferences.getInstance();

    // Sauvegarde d'une valeur
    await prefs.setString('username', 'Alpha');

    // Lecture de la valeur sauvegardée
    final username = prefs.getString('username');

    // Vérifie que la valeur est correcte
    expect(username, equals('Alpha'));
  });
}
