//
//  BoardTests.swift
//  iLearnChessMacOSTests
//
//  Created by Keith Staines on 21/11/2021.
//

import XCTest
@testable import iLearnChessMacOS

class BoardTests: XCTestCase {

    func test_init_with_1_square() {
        let sut = Board(ranks: 1, files: 1)
        XCTAssertEqual(sut.ranks, 1)
        XCTAssertEqual(sut.files, 1)
        XCTAssertEqual(, <#T##expression2: Equatable##Equatable#>)
    }

}
