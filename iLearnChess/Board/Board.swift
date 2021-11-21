//
//  Board.swift
//  iLearnChess
//
//  Created by Keith Staines on 21/11/2021.
//

import Foundation

struct Board {
    let rows = 8
    let columns = 8
    lazy var squares: [[Square]] = {
        var squares = [[Square]]()
        for row in 1...rows {
            for col in 1...columns {
                
            }
        }
        return squares
    }()
    
}

struct Square {
    let rowIndex: Int
    let colIndex: Int
    
    enum SquareType {
        case white
        case black
    }
}
