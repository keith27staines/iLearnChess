//
//  Board.swift
//  iLearnChess
//
//  Created by Keith Staines on 21/11/2021.
//

import Foundation

class Board {
    let ranks: Int
    let files: Int
    private var squares: [[Square]]
    
    init(ranks: Int = 8, files: Int = 8) {
        self.ranks = ranks
        self.files = files
        self.squares = []
        self.squares = makeSquares(ranks: ranks, files: files)
    }
    
    func square(rank: Int, file: Int) -> Square {
        squares[rank][file]
    }
    
    func rankSquares(_ square: Square) -> [Square] {
        rankSquares(square.rank)
    }
    
    func rankSquares(_ rank: Int) -> [Square] {
        return squares[rank]
    }
    
    func fileSquares(_ square: Square) -> [Square] {
        fileSquares(square.file)
    }
    
    func fileSquares(_ file: Int) -> [Square] {
        squares.joined().filter { $0.file == file }
    }
    
    /// forward diagon is this /
    func forwardDiagonalSquares(_ square: Square) -> [Square] {
        squares.joined().filter { otherSquare in
            let rankDifference = otherSquare.rank - square.rank
            let fileDifference = otherSquare.file - square.file
            return rankDifference == fileDifference
        }
    }
    
    /// backward diagon is this \
    func backwardDiagonalSquares(_ square: Square) -> [Square] {
        squares.joined().filter { otherSquare in
            let rankDifference = otherSquare.rank - square.rank
            let fileDifference = otherSquare.file - square.file
            return rankDifference == -fileDifference
        }
    }
    
    private func makeSquares(ranks: Int, files: Int) -> [[Square]] {
        var squares = [[Square]]()
        for rank in 0..<ranks {
            var fileSquares = [Square]()
            for file in 0..<files {
                let square = Square(rank: rank, file: file)
                fileSquares.append(square)
            }
            squares.append(fileSquares)
        }
        return squares
    }
    
}




