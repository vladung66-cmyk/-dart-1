void main() {
  String word = "dart";
  int gCount = 0;
  String lowerCaseWord = word
      .toLowerCase(); //метод преобразовывавет все символы в мелкий регистр.Для удобства счета

  for (int i = 0; i < lowerCaseWord.length; i++) {
    String char = lowerCaseWord[i];
    if (['a', 'e', 'i', 'o', 'u', 'y'].contains(char)) {
      //прописываем все гласные буквы Английского языка
      gCount++;
    }
  }

  print('Слово: $word');
  print('Гласных букв: $gCount');
}
