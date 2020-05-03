//
//  RoomStore.swift
//  SwiftUIDemo01
//
//  Copyright © 2020 KYC. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    @Published var rooms: [Room]

    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
}
