//
//  ContentView.swift
//  RWDataInCoreData
//
//  Created by Walter Bernal Montero on 06/10/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

//    @FetchRequest(
//        sortDescriptors: [],
//        animation: .default)
//    private var dishes = FetchedResults<Dish>
    
    var body: some View {
        NavigationView {
            Button(action: {
                
            }, label: {Text("Button")})
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
