//
//  LazyVGridItemAdaptiveDemoView.swift
//  iOS
//
//  Created by HiromuTsuruta on 2020/06/24.
//

import SwiftUI

struct LazyVGridItemAdaptiveDemoView: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 10, maximum: 10)), GridItem(.adaptive(minimum: 40, maximum: 40))]) {
                ForEach((1...100), id: \.self) { index in
                    Text("\(index)")
                }
            }
        }
    }
}

struct LazyVGridItemAdaptiveDemoView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridItemAdaptiveDemoView()
    }
}
