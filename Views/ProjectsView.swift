import SwiftUI

struct ProjectsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    Text("Projects & Community Events")
                        .font(.bigShoulders(size: 48, weight: .bold))
                        .foregroundColor(.ksPink)
                        .padding(.top, 20)
                    
                    Text("Short writeup to the effect of Kind Sisters operates to provide community resources in the City of Stirling and surrounding areas.\n\nClick on each panel below to learn more about the services we provide and additional support resources.")
                        .font(.redHat(size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    // Project Cards
                    VStack(spacing: 0) {
                        ProjectCard(
                            title: "Essentials Relief Bags",
                            imageURL: "https://api.builder.io/api/v1/image/assets/TEMP/f6602c922b83e6fbfe6ac5e35b9cf51d2f047cd9?width=2880",
                            backgroundColor: .ksPink
                        )
                        
                        ProjectCard(
                            title: "Women's Community Connect Events",
                            imageURL: "https://api.builder.io/api/v1/image/assets/TEMP/1adc0da1f36a98543beaa902f69cc303365015f1?width=2880",
                            backgroundColor: .ksOrange
                        )
                    }
                    
                    // Photo Gallery
                    VStack(spacing: 20) {
                        Text("Photo Gallery")
                            .font(.bigShoulders(size: 40))
                            .foregroundColor(.black)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(0..<3) { _ in
                                    AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/5ad3902134e2387b229ae9c570cba7762f9bac2b?width=1028")) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Color.gray.opacity(0.3)
                                    }
                                    .frame(width: 250, height: 200)
                                    .cornerRadius(10)
                                }
                            }
                            .padding(.horizontal, 20)
                        }
                    }
                    .padding(.vertical, 30)
                    
                    // Donate Button
                    ActionButton(title: "Donate to Kind Sisters", backgroundColor: .ksOrange)
                    
                    // Local Support Network
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Local Support Network")
                            .font(.bigShoulders(size: 40))
                            .foregroundColor(.black)
                        
                        Text("Further services that can provide help or assistance for specific situations in the Greater Perth area.")
                            .font(.redHat(size: 20))
                            .foregroundColor(.black)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            SupportNetworkItem(name: "WA Connect")
                            SupportNetworkItem(name: "St. Vinnies")
                            SupportNetworkItem(name: "Salvation Army")
                            SupportNetworkItem(name: "Family/Domestic Violence Support")
                            SupportNetworkItem(name: "Ishar Multicultural Women's Health Centre")
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 30)
                }
            }
            .navigationTitle("Projects")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ProjectCard: View {
    let title: String
    let imageURL: String
    let backgroundColor: Color
    @State private var isExpanded = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                isExpanded.toggle()
            }
        }) {
            ZStack(alignment: .bottomLeading) {
                AsyncImage(url: URL(string: imageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray.opacity(0.3)
                }
                .frame(height: 300)
                .clipped()
                
                Text(title)
                    .font(.bigShoulders(size: 48, weight: .bold))
                    .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                    .padding(30)
                    .background(backgroundColor)
                    .cornerRadius(isExpanded ? 25 : 50)
                    .padding(20)
            }
        }
    }
}

struct SupportNetworkItem: View {
    let name: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(name)
                .font(.redHat(size: 20, weight: .bold))
                .foregroundColor(.black)
            
            Text("website.com")
                .font(.redHat(size: 18))
                .foregroundColor(.black)
            
            Text("phone")
                .font(.redHat(size: 18))
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ProjectsView()
}
