//
//  ContentView.swift
//  SwiftUIDemo01
//
//  Copyright © 2020 KYC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = RoomStore(rooms: roomData)
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: addRoom) {
                        Text("Add Room")
                    }
                }
                Section {
                    ForEach(store.rooms) { room in
                        RoomCell(room: room)
                    }
                    .onDelete(perform: deleteRoom)
                    .onMove(perform: moveRoom)
                }
            }
            .navigationBarTitle(Text("Hotel Rooms"))
            .navigationBarItems(trailing: EditButton())
            .listStyle(GroupedListStyle())
        }
        .environment(\.sizeCategory, .extraExtraLarge)
        .environment(\.colorScheme, .dark)
    }
    
    func addRoom() {
        let room = Room(name: "Rainbow Room", capacity: 10, hasVideo: false, imageName: "Slow")
        store.rooms.append(room)
    }
    
    func deleteRoom(at offsets: IndexSet) {
        store.rooms.remove(atOffsets: offsets)
    }
    
    func moveRoom(from source: IndexSet, to destination: Int) {
        store.rooms.move(fromOffsets: source, toOffset: destination)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: RoomStore(rooms: roomData))
                .environment(\.sizeCategory, .extraExtraLarge)
                .environment(\.colorScheme, .dark)
        }
    }
}
#endif

struct RoomCell: View {
    let room: Room
    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            Image(room.imageName).cornerRadius(8)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
