//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a list displaying items from an array of strings.

import SwiftUI

struct StringListView: View {
    let items: [String]
    
    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
    }
}

