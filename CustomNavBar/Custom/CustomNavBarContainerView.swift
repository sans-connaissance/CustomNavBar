//
//  CustomNavBarContainerView.swift
//  CustomNavBar
//
//  Created by David Malicke on 2/7/22.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: ()-> Content) {
        self.content = content()
        
    }
    
    var body: some View {
        ZStack {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack {
                CustomNavBarView()
                Spacer()
            }
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack {
                Color.green.ignoresSafeArea()
                Text("Hello World")
                    .foregroundColor(.white)
            }
        }
    }
}
