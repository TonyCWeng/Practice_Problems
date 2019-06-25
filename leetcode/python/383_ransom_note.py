def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        letter_count = {}
        for letter in magazine:
            if letter in letter_count:
                letter_count[letter] += 1
            else:
                letter_count[letter] = 1
        for letter in ransomNote:
            if letter in letter_count and letter_count[letter] > 0:
                letter_count[letter] -= 1
            else:
                return False
        return True
# Time Complexity: O(m + n), n = length of ransomeNote, m = length of magazine
# Space Complexity: O(m)