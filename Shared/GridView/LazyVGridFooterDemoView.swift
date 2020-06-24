//
//  LazyVGridFooterDemoView.swift
//  iOS
//
//  Created by HiromuTsuruta on 2020/06/24.
//

import SwiftUI

struct LazyVGridFooterDemoView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 4), pinnedViews: .sectionFooters) {
                Section(footer: Text("footer")) {
                    ForEach((1...100), id: \.self) { index in
                        Text("\(index)")
                            .frame(width: 60, height: 60)
                    }
                }
            }
        }
    }
}

struct LazyVGridFooterDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridFooterDemoView()
    }
}
