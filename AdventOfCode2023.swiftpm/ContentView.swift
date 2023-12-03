import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "00.circle")
                .imageScale(.large)
                .frame(width: 40, height: 40)
                .foregroundColor(.accentColor)
            Text("Day 00")
        }.onTapGesture {
            Day00View()
        }
    }
}
