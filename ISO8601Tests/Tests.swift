//
//  Tests.swift
//  ISO8601
//
//  Created by Khoa Pham on 06/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import XCTest
import ISO8601

class Tests: XCTestCase {

  func test1() {
    let date = NSDate(timeIntervalSince1970: 1460111130)

    XCTAssertEqual(DateFormatter.date(string: "2016-04-08T10:25:30Z"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08T102530Z"), date)
    XCTAssertEqual(DateFormatter.date(string: "20160408T10:25:30Z"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 10:25:30Z"), date)

    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 11:25:30+0100"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 11:25:30     +0100"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 11:25:30 +0100"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 112530 +010000"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 202530GMT+1000"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 122530 GMT+0200"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 08:25:30-0200"), date)
    XCTAssertEqual(DateFormatter.date(string: "2016-04-08 08:25:30-02:00"), date)
    XCTAssertEqual(DateFormatter.date(string: "20160408 08:25:30-02:00"), date)
  }

  func test2() {
    let date = NSDate(timeIntervalSince1970: 1460111130)
    let string = "2016-04-08T10:25:30 +0000"

    XCTAssertEqual(DateFormatter.string(date: date), string)
    XCTAssertEqual(DateFormatter.date(string: string), date)
  }
}
