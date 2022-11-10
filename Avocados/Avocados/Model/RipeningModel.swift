//
//  RipeningModel.swift
//  Avocados
//
//  Created by Христиченко Александр on 2022-11-10.
//

import SwiftUI

//MARK: - RIPENING MODEl

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
