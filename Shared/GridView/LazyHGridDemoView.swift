//
//  LazyHGridDemoView.swift.swift
//  iOS
//
//  Created by HiromuTsuruta on 2020/06/24.
//

import SwiftUI

struct LazyHGridDemoView: View {
    var body: some View {
        ScrollView {
            LazyHGrid(rows: Array(repeating: GridItem(), count: 20)) {
                ForEach((1...100), id: \.self) { index in
                    Text("\(index)")
                        .frame(width: 60, height: 60)
                }
            }
        }
    }
}

struct LazyHGridDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridDemoView()
    }
}
