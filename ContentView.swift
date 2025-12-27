import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "person.2.fill")
                }
                .tag(1)
            
            ProjectsView()
                .tabItem {
                    Label("Projects", systemImage: "list.bullet.rectangle")
                }
                .tag(2)
            
            ContactView()
                .tabItem {
                    Label("Contact", systemImage: "envelope.fill")
                }
                .tag(3)
            
            DonateView()
                .tabItem {
                    Label("Donate", systemImage: "heart.fill")
                }
                .tag(4)
        }
        .accentColor(.ksPink)
    }
}

#Preview {
    ContentView()
}
