//
//  Room.swift
//  SwiftUIDemo01
//
//  Copyright © 2020 KYC. All rights reserved.
//

import SwiftUI

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool
    var imageName: String
}

let roomData = [
    Room(name: "Observation Deck", capacity: 6, hasVideo: true, imageName: "Fast"),
    Room(name: "Executive Suite", capacity: 8, hasVideo: false, imageName: "Echo"),
    Room(name: "Charter Jet", capacity: 16, hasVideo: true, imageName: "HighPitch"),
    Room(name: "Dungeon", capacity: 10, hasVideo: false, imageName: "LowPitch"),
    Room(name: "Panorama", capacity: 10, hasVideo: false, imageName: "Slow"),
    Room(name: "Oceanfront", capacity: 10, hasVideo: false, imageName: "Reverb"),
]
