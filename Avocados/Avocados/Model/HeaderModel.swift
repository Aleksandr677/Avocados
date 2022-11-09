//
//  HeaderModel.swift
//  Avocados
//
//  Created by Христиченко Александр on 2022-11-09.
//

import SwiftUI

//MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
