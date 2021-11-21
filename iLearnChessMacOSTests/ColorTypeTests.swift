//
//  ColorTypeTests.swift
//  iLearnChessTests
//
//  Created by Keith Staines on 21/11/2021.
//

import XCTest
@testable import iLearnChessMacOS

class ColorTypeTests: XCTestCase {

    func test_() {
        let sut = ColorType.black
        XCTAssertEqual(sut.oppositeColor, .white)
        XCTAssertEqual(sut.oppositeColor.oppositeColor, .black)
    }

}
