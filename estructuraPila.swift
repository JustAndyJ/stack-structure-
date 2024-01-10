func validBraces(_ string:String) -> Bool {

    var stack: [Character] = []

    let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{" ]

    for char in string {
      print("\nstack:", stack)
      print("char", char)
      print("pairs[char]", pairs[char])

        if let openingBrace = pairs[char] {
          
            if stack.isEmpty || stack.popLast() != openingBrace {
                return false
            }
        } else {
            stack.append(char)
        }
    }

    return stack.isEmpty
}
print(validBraces("({"))    // Output: true
print(validBraces("(}"))        // Output: false
print(validBraces("[(])"))      // Output: false
print(validBraces("[({})](]"))  // Output: false
print(validBraces("()"))    // Output: true
 


















