//
//  RedactedView.swift
//  SwiftUI Modifiers
//
//  Created by Samuel Blackburn on 29/03/2022.
//

import SwiftUI

struct RedactedView: View {
    var body: some View {
        VStack {
            HStack {
                Text("National Insurance No. :")
                Text("random")
                    .redacted(reason: .placeholder)
            }
        }
    }
}

struct RedactedView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedView()
    }
}
