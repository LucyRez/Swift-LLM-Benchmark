//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for an onboarding screen with three pages, each containing an image and a description, and a button to skip the onboarding process.

import SwiftUI
import PlaygroundSupport

struct OnboardingView: View {

    @State private var currentPage = 0
    private let images = ["star", "person", "plant"]
    private let descriptions = ["This is the first page of onboarding screen.", "This is the second page of onboarding screen.", "This is the third page of onboarding screen."]

    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<images.count, id: \.self) { index in
                    OnboardingContentView(imageName: images[index], description: descriptions[index])
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle())

            Button("Skip") {
                // Implement the logic to skip onboarding process
            }
        }
    }
}

struct OnboardingContentView: View {

    let imageName: String
    let description: String

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Text(description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
        }
    }
}

let view = OnboardingView()
PlaygroundPage.current.setLiveView(view)

//struct OnboardingScreen: View {
//    @State private var currentPage = 0
//
//    var body: some View {
//        VStack {
//            TabView(selection: $currentPage) {
//                ForEach(0..<3) { index in
//                    VStack {
//                        Image(systemName: "photo")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(height: 200)
//
//                        Text("Description for page \(index + 1)")
//                            .font(.title)
//                            .padding()
//                    }
//                    .tag(index)
//                }
//            }
//            .tabViewStyle(PageTabViewStyle())
//
//            Button(action: {
//                // Handle skip action
//            }) {
//                Text("Skip")
//                    .foregroundColor(.white)
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//                    .padding(.horizontal, 40)
//            }
//        }
//        .padding()
//    }
//}
