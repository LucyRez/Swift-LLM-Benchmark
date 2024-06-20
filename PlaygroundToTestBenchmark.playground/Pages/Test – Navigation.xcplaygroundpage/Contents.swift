//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a navigation view with a list of items, where tapping an item navigates to a detail view.

import SwiftUI

struct NavigationListView: View {
    let items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            List(items, id: \.self) { item in
                NavigationLink(destination: Text("Detail view for \(item)")) {
                    Text(item)
                }
            }
            .navigationTitle("Items")
        }
    }
}

