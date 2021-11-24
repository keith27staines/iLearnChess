//
//  BoardTests.swift
//  iLearnChessMacOSTests
//
//  Created by Keith Staines on 21/11/2021.
//

import XCTest
@testable import iLearnChessMacOS

class BoardTests: XCTestCase {

    func test_init_with_1x1() {
        let sut = Board(ranks: 1, files: 1)
        XCTAssertEqual(sut.ranks, 1)
        XCTAssertEqual(sut.files, 1)
        let square = sut.square(rank: 0, file: 0)
        XCTAssertEqual(square.squareColor, .black)
        
    }
    
    func test_init_default_board() {
        let sut = Board()
        XCTAssertEqual(sut.ranks, 8)
        XCTAssertEqual(sut.files, 8)
    }
    
    func test_getSquare_on_default_board() {
        let sut = Board()
        let rank = 4
        let file = 3
        let square = sut.square(rank: rank, file: file)
        XCTAssertEqual(square.rank, rank)
        XCTAssertEqual(square.file, file)
        XCTAssertEqual(square.squareColor, .white)
    }
    
    func test_getSquaresForRank() {
        let sut = Board(ranks: 2, files: 2)
        let squares = sut.rankSquares(1)
        XCTAssertEqual(squares.count, sut.ranks)
        XCTAssertEqual(squares[0].rank, 1)
        XCTAssertEqual(squares[0].file, 0)
        XCTAssertEqual(squares[1].rank, 1)
        XCTAssertEqual(squares[1].file, 1)
    }
    
    func test_getSquaresForFile() {
        let sut = Board(ranks: 2, files: 2)
        let squares = sut.fileSquares(1)
        XCTAssertEqual(squares.count, sut.ranks)
        XCTAssertEqual(squares[0].rank, 0)
        XCTAssertEqual(squares[0].file, 1)
        XCTAssertEqual(squares[1].rank, 1)
        XCTAssertEqual(squares[1].file, 1)
    }
    
    func test_forwardDiagonalSquares_on_shortest_diagonal() {
        let sut = Board(ranks: 2, files: 2)
        let seedSquare = Square(rank: 0, file: 1)
        let squares = sut.forwardDiagonalSquares(seedSquare)
        XCTAssertEqual(squares.count, 1)
        XCTAssertEqual(squares[0], seedSquare)
    }
    
    func test_backwardDiagonalSquares_on_shortest_diagonal() {
        let sut = Board(ranks: 2, files: 2)
        let seedSquare = Square(rank: 1, file: 1)
        let squares = sut.backwardDiagonalSquares(seedSquare)
        XCTAssertEqual(squares.count, 1)
        XCTAssertEqual(squares[0], seedSquare)
    }
    
    func test_forwardDiagonalSquares_on_longest_diagonal() {
        let sut = Board(ranks: 2, files: 2)
        let seedSquare = Square(rank: 0, file: 0)
        let squares = sut.forwardDiagonalSquares(seedSquare)
        XCTAssertEqual(squares.count, sut.ranks)
        XCTAssertEqual(squares[0].rank, 0)
        XCTAssertEqual(squares[0].file, 0)
        XCTAssertEqual(squares[1].rank, 1)
        XCTAssertEqual(squares[1].file, 1)
    }
    
    func test_backwardDiagonalSquares_on_longest_diagonal() {
        let sut = Board(ranks: 2, files: 2)
        let seedSquare = Square(rank: 0, file: 1)
        let squares = sut.backwardDiagonalSquares(seedSquare)
        XCTAssertEqual(squares.count, sut.ranks)
        XCTAssertEqual(squares[0].rank, 0)
        XCTAssertEqual(squares[0].file, 1)
        XCTAssertEqual(squares[1].rank, 1)
        XCTAssertEqual(squares[1].file, 0)
    }

}
