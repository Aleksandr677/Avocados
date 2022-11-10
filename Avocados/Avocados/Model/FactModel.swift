//
//  FactModel.swift
//  Avocados
//
//  Created by Христиченко Александр on 2022-11-10.
//

import SwiftUI

//MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
