import UIKit

var greeting = "Hello, playground"
/* Add Two Numbers
 https://leetcode.com/problems/add-two-numbers/
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.
 Example 2:

 Input: l1 = [0], l2 = [0]
 Output: [0]
 Example 3:

 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]
  

 Constraints:

 The number of nodes in each linked list is in the range [1, 100].
 0 <= Node.val <= 9
 It is guaranteed that the list represents a number that does not have leading zeros.*/



//  Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class Solution {
   func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
     
       return ListNode(0)
   }
}

func findReturn(_ l1:[Int], _ l2: [Int]) -> [Int] {
    var str1 = ""
    var str2 = ""
    var l1 = l1
    var l2 = l2
    while l1 != [] {
        str1 += "\(l1.removeLast())"
        l1.dropLast()
    }
    while l2 != [] {
        str2 += "\(l2.removeLast())"
        l2.dropLast()
    }
    var summ = "\(Int(str1)! + Int(str2)!)"
    var returnArray = summ.reversed().compactMap { Int(String($0))}
    return returnArray
}

func testFunction(_ l1Test:[Int],_ l2Test: [Int], testNumber: Int) {
    let testArray = findReturn(l1Test, l2Test)
        print("Test result for test number \(testNumber): \(testArray)")
}

let test1 = testFunction([2,4,3], [5,6,4], testNumber: 1)
let test2 = testFunction([0], [0] , testNumber: 2)
let test3 = testFunction([9,9,9,9,9,9,9],[9,9,9,9], testNumber: 3)
