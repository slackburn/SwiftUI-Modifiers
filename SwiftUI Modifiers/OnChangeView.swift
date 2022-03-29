//
//  OnChangeView.swift
//  SwiftUI Modifiers
//
//  Created by Samuel Blackburn on 29/03/2022.
//

import SwiftUI

struct OnChangeView: View {
    
    @State private var text = ""
    
    var body: some View {
        TextField("Enter some text:", text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .onChange(of: text) { newValue in
                print("Your text: \(text)")
            }
    }
}

struct OnChangeView_Previews: PreviewProvider {
    static var previews: some View {
        OnChangeView()
    }
}
