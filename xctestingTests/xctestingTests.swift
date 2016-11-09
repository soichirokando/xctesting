//
//  XCTest_swiftTests.swift
//  XCTest_swiftTests
//
//  Created by kando on 2016/11/02.
//  Copyright © 2016年 skando. All rights reserved.
//

import XCTest
@testable import xctesting

class XCTestSwiftTests: XCTestCase {
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  
  func testInit() {
    let user = User(lastName: "YAMADA", firstName: "Hanako", age: 11, aaa: 10)
    XCTAssertEqual(user.getFullName(), "Hanako YAMADA")
  }
  
  func testFake() {
    //let user = User()
    let user = User(lastName: "YAMADA", firstName: "Taro", age: 10, aaa: 10)
    
    //XCTFail ("これは落ちる")
    XCTAssertNil (nil, "Nilなら落ちない")
    XCTAssertNotNil (user.firstName, "Nilなら落ちる")
    XCTAssert (true, "format…")
    XCTAssertTrue (true, "format…")
    XCTAssertFalse (false, "format…")
    XCTAssertEqual (user.getAge(), user.getAAA(), "format…")
    
    //XCTAssertEqualWithAccuracy (user.getAge(), user.getAAA() , accuracy: 0.001)
    XCTAssertEqualWithAccuracy (12, 11, accuracy: 11)
    
    XCTAssertGreaterThan (user.lastName, user.firstName, "format…")
    XCTAssertGreaterThanOrEqual (user.lastName, user.firstName, "format…")
    XCTAssertLessThan (user.firstName, user.lastName, "format…")
    XCTAssertLessThanOrEqual (user.firstName, user.lastName, "format…")
  }
  
  func testGetName() {
    let user = User()
    user.lastName = "YAMADA"
    user.firstName = "Taro"
    XCTAssertEqual(user.getFullName(), "Taro YAMADA", "名前ぇ")
    XCTAssertEqual(user.getJpFullName(), "YAMADA Taro", "名前違う")
  }
  
}
