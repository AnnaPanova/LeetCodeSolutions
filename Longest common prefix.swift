//
//  Longest common prefix.swift
//  LeetCodeSolutions
//
//  Created by Anna Panova on 10.02.25.
//


/* Longest common prefix
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".


 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
  

 Constraints:

 1 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] consists of only lowercase English letters if it is non-empty.
 */
import Foundation

    func longestCommonPrefix(_ strs: [String]) -> String {
        var commonPrefix = strs[0]
        
        for string in strs[1...] {
            while !string.hasPrefix(commonPrefix) {
                commonPrefix = String(commonPrefix.dropLast())
            }
            
        }
        return commonPrefix
    }

