import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("My First iOS App")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("\(count)")
                .font(.system(size: 64, weight: .semibold, design: .rounded))
                .accessibilityIdentifier("counterValue")

            HStack(spacing: 16) {
                Button {
                    count -= 1
                } label: {
                    Label("Decrease", systemImage: "minus")
                }
                .accessibilityIdentifier("decrementButton")

                Button {
                    count += 1
                } label: {
                    Label("Increase", systemImage: "plus")
                }
                .accessibilityIdentifier("incrementButton")
            }
            .buttonStyle(.borderedProminent)

            Button("Reset") {
                count = 0
            }
            .accessibilityIdentifier("resetButton")
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}