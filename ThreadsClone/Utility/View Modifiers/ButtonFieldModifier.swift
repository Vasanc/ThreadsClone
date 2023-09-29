//
//  ButtonFieldModifier.swift
//  ThreadsClone
//
//  Created by Vasan on 29/09/23.
//

import SwiftUI

struct ButtonFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 352, height: 44)
            .background(.black)
            .foregroundStyle(.white)
            .cornerRadius(8)
            .padding(.top)
    }
}
