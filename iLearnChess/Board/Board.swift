//
//  Board.swift
//  iLearnChess
//
//  Created by Keith Staines on 21/11/2021.
//

import Foundation

typealias Rank = [Square]
typealias File = [Square]

class Board {
    let ranks: Int
    let files: Int
    private var squares: [[Square]]
    
    init(ranks: Int, files: Int) {
        self.ranks = ranks
        self.files = files
        self.squares = []
        self.squares = makeSquares(ranks: ranks, files: files)
    }
    
    private func makeSquares(ranks: Int, files: Int) -> [[Square]] {
        var squares = [[Square]]()
        var colorType = ColorType.black
        for row in 0..<ranks {
            var file = [Square]()
            for col in 0..<files {
                let square = Square(rowIndex: row, colIndex: col, colorType: colorType)
                file.append(square)
                colorType = colorType.oppositeColor
            }
            squares[row] = file
        }
        return squares
    }
    
}




