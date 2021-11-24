//
//  Piece.swift
//  iLearnChess
//
//  Created by Keith Staines on 24/11/2021.
//

import Foundation



struct Piece: Hashable, Codable {
    
    enum PieceType: Codable {
        case pawn
        case rook
        case knight
        case bishop
        case king
        case queen
    }
    
    let pieceType: PieceType
    let colorType: ColorType
    
    init(pieceType: PieceType, colorType: ColorType) {
        self.pieceType = pieceType
        self.colorType = colorType
    }
}
