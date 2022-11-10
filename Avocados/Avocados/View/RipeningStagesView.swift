//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Христиченко Александр on 2022-11-09.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
