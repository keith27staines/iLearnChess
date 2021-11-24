//
//  SquareTests.swift
//  iLearnChessTests
//
//  Created by Keith Staines on 21/11/2021.
//

import XCTest
@testable import iLearnChessMacOS

class SquareTests: XCTestCase {

    func test_color_of_square_on_long_forward_diagonal() {
        let sut = Square(rank: 3, file: 3)
        XCTAssertEqual(sut.rank, 3)
        XCTAssertEqual(sut.file, 3)
        XCTAssertEqual(sut.squareColor, .black)
    }

}
