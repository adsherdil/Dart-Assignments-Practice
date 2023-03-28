void main() {
  List<String> strings = ['abcdefg', 'abdefg', 'abcefg', 'abcefgh'];

  String lcs = getLongestCommonSubsequence(strings);

  print('The longest common subsequence is: $lcs');
}

String getLongestCommonSubsequence(List<String> strings) {
  if (strings.isEmpty) {
    return '';
  }

  String firstString = strings[0];

  for (int i = 0; i < firstString.length; i++) {
    for (int j = firstString.length - i; j > 0; j--) {
      String substring = firstString.substring(i, i + j);

      bool isCommon = true;

      for (int k = 1; k < strings.length; k++) {
        if (!strings[k].contains(substring)) {
          isCommon = false;
          break;
        }
      }

      if (isCommon) {
        return substring;
      }
    }
  }

  return '';
}
