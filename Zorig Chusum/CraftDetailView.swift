import SwiftUI

struct CraftDetailView: View {
    let craft: Craft

    // Addition 3: an extra SwiftUI component — a "Visited" toggle
    @State private var isVisited = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                // Image + title row
                Image(craft.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 220)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    // Visual styling: rounded corners on the detail image
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.top, 12)

                VStack(alignment: .leading, spacing: 4) {
                    Text(craft.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text(craft.englishName)
                        .font(.title3)
                        .foregroundColor(.secondary)
                }

                Divider()

                Text("About this craft")
                    .font(.headline)

                Text(craft.description)
                    .font(.body)
                    .foregroundColor(.primary)
                    .lineSpacing(4)

                Divider()

                // Extra component: Toggle so the user can mark a craft "Visited"
                Toggle(isOn: $isVisited) {
                    HStack {
                        Image(systemName: isVisited ? "checkmark.seal.fill" : "checkmark.seal")
                            .foregroundColor(isVisited ? .green : .gray)
                        Text("Mark as Visited")
                    }
                }
                .padding(.vertical, 4)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(craft.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CraftDetailView(craft: allCrafts[0])
    }
}
