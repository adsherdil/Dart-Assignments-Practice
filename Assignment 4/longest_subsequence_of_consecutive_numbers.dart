void main() {
  List<int> numbers = [21, 22, 34, 45, 53, 58, 63, 12, 42, 61, 36, 52, 19];
  List<int> longestSubsequence = LongestSubsequence(numbers);
  print(longestSubsequence);
}

List<int> LongestSubsequence(List<int> numbers) {
  List<int> currentSubsequence = [numbers[0]];
  List<int> longestSubsequence = [numbers[0]];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] == currentSubsequence.last + 1) {
      currentSubsequence.add(numbers[i]);
      if (currentSubsequence.length > longestSubsequence.length) {
        longestSubsequence = List.from(currentSubsequence);
      }
    } else {
      currentSubsequence = [numbers[i]];
    }
  }

  return longestSubsequence;
}
