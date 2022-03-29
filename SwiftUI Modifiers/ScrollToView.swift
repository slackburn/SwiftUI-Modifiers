//
//  ScrollToView.swift
//  SwiftUI Modifiers
//
//  Created by Samuel Blackburn on 29/03/2022.
//

import SwiftUI

struct ScrollToView: View {
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                Button("Go to the 9th item") {
                    value.scrollTo(9, anchor: .top)
                }
                
                ForEach(0..<20) { i in
                    Text("item \(i)")
                        .frame(width: 200, height: 200)
                        .id(i)
                }
            }
        }
    }
}

struct ScrollToView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollToView()
    }
}
