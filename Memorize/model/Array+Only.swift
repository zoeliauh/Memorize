//
//  Array+Only.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/6/6.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
