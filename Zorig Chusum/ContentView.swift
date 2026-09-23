import SwiftUI

struct ContentView: View {

    // All 13 crafts
    private let crafts = allCrafts

    // Search text for the .searchable() bonus feature
    @State private var searchText = ""

    // Filtered list based on search text
    private var filteredCrafts: [Craft] {
        if searchText.isEmpty {
            return crafts
        } else {
            return crafts.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.englishName.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationStack {
            List(filteredCrafts) { craft in
                NavigationLink(destination: CraftDetailView(craft: craft)) {
                    CraftRow(craft: craft)
                }
            }
            .listStyle(.insetGrouped)
            // Addition 1: navigation title on the list screen
            .navigationTitle("Zorig Chusum")
            // Bonus: search bar to filter the list
            .searchable(text: $searchText, prompt: "Search crafts")
        }
    }
}

// MARK: - Row Subview
struct CraftRow: View {
    let craft: Craft

    var body: some View {
        HStack(spacing: 14) {
            Image(craft.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipped()
                // Addition 2 (visual styling): corner radius on the image
                .clipShape(RoundedRectangle(cornerRadius: 10))

            VStack(alignment: .leading, spacing: 2) {
                Text(craft.name)
                    .font(.headline)
                Text(craft.englishName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    ContentView()
}
