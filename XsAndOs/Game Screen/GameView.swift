//
//  GameView.swift
//  XsAndOs
//
//  Created by Sunil Sharma on 02/06/23.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("End Game"){
                    dismiss()
                }.buttonStyle(.bordered)
            }
        }.navigationTitle("Xs And Os")
            .inNavigationStack()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
