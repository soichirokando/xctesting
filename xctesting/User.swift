//
//  File.swift
//  XCTest_swift
//
//  Created by kando on 2016/11/02.
//  Copyright © 2016年 skando. All rights reserved.
//

import Foundation

class User {
  var lastName: String = ""
  var firstName: String = ""
  var age: Int = 0
  var aaa: Int = 0
  
  init() {
    self.lastName = ""
    self.firstName = ""
    self.age = 0
    self.aaa = 0
  }
  
  init (lastName: String, firstName: String, age: Int, aaa: Int) {
    self.lastName = lastName
    self.firstName = firstName
    self.age = age
    self.aaa = aaa
  }
  
  func getFullName() -> String {
    return "\(firstName) \(lastName)"
  }
  
  func getJpFullName() -> String {
    return "\(lastName) \(firstName)"
  }
  func getAge() -> Int {
    return age
  }
  
  func getAAA() -> Int {
    return aaa
  }
  
}

enum SampleError: Error {
  case Invalid
  case Unknown
}

class Sample {
  static func exec() throws {
    throw SampleError.Invalid
  }
}
