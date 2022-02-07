//
//  AppNavBarView.swift
//  CustomNavBar
//
//  Created by David Malicke on 2/7/22.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text("Navigate")
                }
            }
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.mint.ignoresSafeArea()
                
                NavigationLink {
                    Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Navigation")
                }
            }
            .navigationTitle("Nav Title Here")
        }
    }
}
