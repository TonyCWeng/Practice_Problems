dict = {'1':2, '2': 3}
for char in '13':
    if char not in dict:
        print('hi')
    else:
        print(dict.keys())


def startsWith(prefix: str) -> bool:
        """
        Returns if there is any word in the trie that starts with the given prefix.
        """
        for char in prefix:
            if char not in dict:
                return False
        return True
print(startsWith('3'))