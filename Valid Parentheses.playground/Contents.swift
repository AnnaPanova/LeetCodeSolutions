import UIKit

/* Valid Parentheses
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
  
 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false

 Example 4:
 Input: s = "([])"
 Output: true

 Constraints:
 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

// 1 version: works, but not effective
func isValid(_ s: String) -> Bool {
    if s.count % 2 != 0 { return false } 
    
    var stringForChecking = s
    while stringForChecking.contains("()") || stringForChecking.contains("[]") || stringForChecking.contains("{}") {
            stringForChecking = stringForChecking.replacingOccurrences(of: "()", with: "")
            stringForChecking = stringForChecking.replacingOccurrences(of: "[]", with: "")
            stringForChecking = stringForChecking.replacingOccurrences(of: "{}", with: "")
    }
   return stringForChecking.isEmpty
    }

isValid("(]")

// 2 version: fast and effective

func isValidSecond(_ s: String) -> Bool {
    
    if s.count % 2 != 0 {return false}
    var storage: [Character] = []
    for simbol in s {
        switch simbol {
        case "(":
            storage.append(")")
        case "{":
            storage.append("}")
        case "[":
            storage.append("]")
        default:
            if storage.isEmpty || storage.removeLast() != simbol {
                return false
            }
        }
    }
    return storage.isEmpty
}

isValidSecond("[{()}][]")
