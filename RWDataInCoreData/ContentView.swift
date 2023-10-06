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

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Dish.name, ascending: true)],
        animation: .default)
    private var dishes: FetchedResults<Dish>
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Customer.fullName, ascending: true)],
        animation: .default)
    private var customers: FetchedResults<Customer>
    
    var body: some View {
        NavigationView {
            Button(action: {
                let oneDish = dishes.first!
                let oneCustomer = customers.first!
                oneDish.fromCustomer = [oneCustomer]
                
                let newDish = Dish(context: viewContext)
                newDish.name = "Apple pie"
                newDish.size = "Extra Large"
                newDish.price = 12.99
                
                let newLocation = Location(context: viewContext)
                newLocation.name = "Somewhere in Outter Space"
                
            }, label: {Text("Button")})
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
