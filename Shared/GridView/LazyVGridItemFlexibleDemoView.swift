//
//  LazyVGridItemFlexibleDemoView.swift
//  iOS
//
//  Created by HiromuTsuruta on 2020/06/24.
//

import SwiftUI

struct LazyVGridItemFlexibleDemoView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(minimum: 30, maximum: 100)), GridItem(.flexible(minimum: 0, maximum: 10))]) {
                ForEach((1...100), id: \.self) { index in
                    Text("\(index)")
                }
            }
        }
    }
}

struct LazyVGridItemFlexibleDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridItemFlexibleDemoView()
    }
}
