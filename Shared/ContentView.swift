//
//  ContentView.swift
//  Shared
//
//  Created by HiromuTsuruta on 2020/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
//        LazyVGrid(columns: columns) {
//            ForEach((1...5), id: \.self) {
//                Text("行数:")
//                Text("\($0)行目")
//            }
//        }
        
//        ScrollView {
//            ForEach((1...5), id: \.self) {
//                HStack {
//                    let text = "\($0)行目"
//
//                    Text("行数:")
//                    Text(text)
//                }
//            }
//        }
        
        ScrollView {
            ForEach((1...5), id: \.self) {
                let id = String($0)
                
                HStack {
                    Text("行数:")
                    Text("\(id)行目")
                }.frame(maxWidth: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
