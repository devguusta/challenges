// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math';

class Solution {
  int maximumLengthSubstring(String s) {
    int l = 0;
    int r = 0;
    int _max = 1;
    Map<String, int> counter = {};

    counter[s[0]] = 1;

    while (r < s.length - 1) {
      r++;

      if (counter.containsKey(s[r])) {
        counter[s[r]] = counter[s[r]]! + 1;
      } else {
        counter[s[r]] = 1;
      }

      while (counter[s[r]] == 3) {
        counter[s[l]] = counter[s[l]]! - 1;
        l++;
      }

      _max = max(_max, r - l + 1);
    }

    return _max;
  }
}
