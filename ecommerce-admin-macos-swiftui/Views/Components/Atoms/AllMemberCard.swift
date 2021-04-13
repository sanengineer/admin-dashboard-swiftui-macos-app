//
//  AllMemberCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct AllMemberCard: View {
    var body: some View {
        HStack{
            Text("New Member Card")
         }
        .frame(width: 154, height: 99, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct AllMemberCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
