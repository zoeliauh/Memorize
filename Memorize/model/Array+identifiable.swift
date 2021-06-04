//
//  Array+identifiable.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/6/4.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0   //TODO: bogus!
    }
}
