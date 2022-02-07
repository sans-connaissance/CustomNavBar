//
//  CustomNavBarView.swift
//  CustomNavBar
//
//  Created by David Malicke on 2/7/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @State private var showBackButton: Bool = true
    @State private var title: String = "David Malicke"
    @State private var subtitle: String? = "Education"
    
    var body: some View {
        //THIS HSTACK AND ITS BACKGROUND COLOR CONTROL COLOR AND SIZE
        HStack {
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showBackButton {
                backButton.opacity(0)
            }
        }
        .padding()
        .accentColor(.white)
        .foregroundColor(.white)
        .font(.headline)
        .background(Color.blue.ignoresSafeArea(edges: .top))
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView()
            Spacer()
        }
    }
}


extension CustomNavBarView {
    
    private var backButton: some View {
        Button {
            
        } label: {
            Image(systemName: "chevron.left")
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 4) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subtitle = subtitle {
                Text(subtitle)
            }
        }
    }
}
