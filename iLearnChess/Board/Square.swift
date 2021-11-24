//
//  Square.swift
//  iLearnChessTests
//
//  Created by Keith Staines on 21/11/2021.
//

struct Square: Hashable, Codable {
    let rank: Int
    let file: Int
    let piece: Piece?
    
    var linearIndex: Int {
        rank * 8 + file
    }
    
    var squareColor: ColorType {
        let evenRankFileColor = file.isMultiple(of: 2) ? ColorType.black : ColorType.white
        return rank.isMultiple(of: 2) ? evenRankFileColor :  evenRankFileColor.oppositeColor
    }
    
    init(rank: Int, file: Int, piece: Piece? = nil) {
        self.rank = rank
        self.file = file
        self.piece = piece
    }
}


