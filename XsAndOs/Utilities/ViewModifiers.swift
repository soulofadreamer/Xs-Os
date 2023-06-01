//
//  ViewModifiers.swift
//  XsAndOs
//
//  Created by Sunil Sharma on 02/06/23.
//

import SwiftUI
struct NavStackContainer: ViewModifier{
    func body(content: Content) -> some View{
        if#available(iOS 16, *){
            NavigationStack{
                content
            }
        } else {
                NavigationView{
                    content
                }.navigationViewStyle(.stack)
            }
        }
    }
extension View{
    public func inNavigationStack() -> some View {
        self.modifier(NavStackContainer())
    }
}
