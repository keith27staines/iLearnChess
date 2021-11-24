//
//  PieceTests.swift
//  iLearnChessMacOSTests
//
//  Created by Keith Staines on 24/11/2021.
//

import XCTest
@testable import iLearnChessMacOS

class PieceTests: XCTestCase {
    
    func test_init() {
        let blackKnight = Piece(pieceType: .knight, colorType: .black)
        XCTAssertEqual(blackKnight.colorType, .black)
        XCTAssertEqual(blackKnight.pieceType, .knight)
    }
}
