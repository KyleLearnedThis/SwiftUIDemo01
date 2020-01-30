//
//  RoomStore.swift
//  SwiftUIDemo01
//
//  Copyright © 2020 KYC. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    var rooms: [Room] {
        didSet { objectWillChange.send() }
    }

    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    var didChange = PassthroughSubject<Void, Never>()
}
