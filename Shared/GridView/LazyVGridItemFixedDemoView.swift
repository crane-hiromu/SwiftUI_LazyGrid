//
//  LazyVGridItemFixedDemoView.swift
//  iOS
//
//  Created by HiromuTsuruta on 2020/06/24.
//

import SwiftUI

struct LazyVGridItemFixedDemoView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.fixed(30)), GridItem(.fixed(40)), GridItem(.fixed(50))]) {
                ForEach((1...100), id: \.self) { index in
                    Text("\(index)")
                }
            }
        }
    }
}

struct LazyVGridItemFixedDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridItemFixedDemoView()
    }
}
