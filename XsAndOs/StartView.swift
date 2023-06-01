//
//  ContentView.swift
//  XsAndOs
//
//  Created by Sunil Sharma on 01/06/23.
//

import SwiftUI

struct StartView: View {
   
    @State private var gameType: GameType = .undetermined
    @State private var yourName = ""
    @State private var opponentName = ""
    @FocusState private var focus: Bool
    @State private var startGame: Bool = false
   
    var body: some View {
        VStack{
            Picker("Select Game", selection: $gameType) {
                Text ("Select Game Type").tag (GameType.undetermined)
                Text ("Two Sharing device").tag (GameType.single)
                Text("Challenge your device").tag(GameType.bot)
                Text ("Challenge your friend").tag (GameType.peer)
            }.padding().background(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 3))
            Text(gameType.description).padding()
           
            VStack{
                switch gameType {
                case .single:
                    VStack{
                        TextField("Your Name", text: $yourName)
                        TextField("Opponent Name", text: $opponentName)
                    }
                    
                case .bot:
                    VStack{
                        TextField("Your Name", text: $yourName)
                       
                    }
                case .peer:
                    EmptyView()
                case .undetermined:
                    EmptyView()
                }
            }.padding().textFieldStyle(.roundedBorder).focused($focus).frame(width: 350)
            if gameType != .peer{
                Button("Start Game"){
                    focus = false
                    startGame = true
                }.buttonStyle(.bordered).disabled(gameType == .undetermined ||
                    gameType == .bot && yourName.isEmpty || gameType == .single && (yourName.isEmpty || opponentName.isEmpty))
                Image("LaunchScreen")
                Spacer()
            }
          
            
            
        }.padding().navigationTitle("Xs And Os").fullScreenCover(isPresented: $startGame) {
            GameView()
            
        }.inNavigationStack()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
