//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a stack component with circle image on the left side and a label with the bold font of size 15 on the right


import SwiftUI
//import PlaygroundSupport
//
//
//
//let view = StackComponentView(image: Image(systemName: "star"), text: "Test")
//PlaygroundPage.current.setLiveView(view)


struct CircleImageLabelView: View {
    var imageName: String
    var labelText: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(Circle())

            Text(labelText)
                .font(.system(size: 15, weight: .bold))
                .padding(.leading, 10)

            Spacer()
        }
        .padding()
    }
}
