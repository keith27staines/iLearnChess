//
//  ColorType.swift
//  iLearnChess
//
//  Created by Keith Staines on 21/11/2021.
//

enum ColorType: Hashable, Codable {
    case white
    case black
    var oppositeColor: ColorType {
        self == .black ? .white : .black
    }
}
