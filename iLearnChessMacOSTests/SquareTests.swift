//
//  SquareTests.swift
//  iLearnChessTests
//
//  Created by Keith Staines on 21/11/2021.
//

import XCTest
@testable import iLearnChessMacOS

class SquareTests: XCTestCase {

    func test_init() {
        let sut = Square(rowIndex: 4, colIndex: 7, colorType: .black)
        XCTAssertEqual(sut.rowIndex, 4)
        XCTAssertEqual(sut.colIndex, 7)
        XCTAssertEqual(sut.colorType, .black)
    }

}
