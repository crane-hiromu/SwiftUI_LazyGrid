//
//  LazyVGridHeaderDemoView.swift
//  iOS
//
//  Created by HiromuTsuruta on 2020/06/24.
//

import SwiftUI

struct LazyVGridHeaderDemoView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 4), pinnedViews: .sectionHeaders) {
                Section(header: Text("header")) {
                    ForEach((1...100), id: \.self) { index in
                        Text("\(index)")
                            .frame(width: 60, height: 60)
                    }
                }
            }
        }
    }
}

struct LazyVGridHeaderDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridHeaderDemoView()
    }
}
