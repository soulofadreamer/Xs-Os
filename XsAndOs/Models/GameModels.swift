//
//  GameModels.swift
//  XsAndOs
//
//  Created by Sunil Sharma on 02/06/23.
//

import Foundation
enum GameType{
    case single, bot, peer, undetermined
    var description: String {
        switch self {
        case .single:
            return "Share your iPhone/iPad and play against a friend."
        case .bot:
            return "play against this iPhone/iPad."
        case .peer:
            return "Invite someone near you who has this app running to play."
        case .undetermined:
            return ""
            
            
        }
    }
}
