//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a settings screen with toggles for notifications and dark mode, and a section for app version information.

import SwiftUI
//import PlaygroundSupport

//let view = SettingsScreenView()
//PlaygroundPage.current.setLiveView(view)


struct SettingsScreen: View {
    @State private var notificationsEnabled: Bool = true
    @State private var darkModeEnabled: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Form {
                Section(header: Text("Preferences")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enable Notifications")
                    }
                    Toggle(isOn: $darkModeEnabled) {
                        Text("Enable Dark Mode")
                    }
                }

                Section(header: Text("App Info")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.0")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.top, 40)

            Spacer()
        }
    }
}
