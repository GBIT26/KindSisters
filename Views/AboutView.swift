import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    Text("Our People")
                        .font(.bigShoulders(size: 48, weight: .bold))
                        .foregroundColor(.ksPink)
                        .padding(.top, 20)
                    
                    // Backstory
                    VStack(spacing: 20) {
                        AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/4dd63ad84cd74a683c403caa30ece8b02ec65d3e?width=1106")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color.gray.opacity(0.3)
                        }
                        .frame(height: 200)
                        .cornerRadius(20)
                        .padding(.horizontal, 30)
                        
                        Text("Backstory write-up with something to the effect of Kind Sisters was created to strengthen community in the City of Stirling and surrounding areas since 20XX.\n\nOur team works to provide support networks and supply donations to those in need. This work could not be achieved without our fantastic volunteers and generous donors.")
                            .font(.redHat(size: 18))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 30)
                    }
                    
                    Text("Meet the Kind Sisters Team")
                        .font(.redHat(size: 30, weight: .medium))
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    // Team Members
                    VStack(spacing: 20) {
                        TeamMemberCard(
                            imageURL: "https://api.builder.io/api/v1/image/assets/TEMP/ceb8aef116141bffb9f609a76ab0e7cd4582e173?width=564",
                            name: "Jody Rynski",
                            role: "Role Title"
                        )
                        
                        TeamMemberCard(
                            imageURL: "https://api.builder.io/api/v1/image/assets/TEMP/d0fa674e48173ac75ccc834b67b7343e0ab12f13?width=564",
                            name: "Penny Webb",
                            role: "Role Title"
                        )
                        
                        TeamMemberCard(
                            imageURL: "https://api.builder.io/api/v1/image/assets/TEMP/918ce8f0ae53465ebe70c6905f6b7fb2d53a70bd?width=564",
                            name: "Alison Taylor",
                            role: "Role Title"
                        )
                    }
                    .padding(.horizontal, 20)
                    
                    // Action Buttons
                    VStack(spacing: 20) {
                        ActionButton(title: "Volunteer with Kind Sisters", backgroundColor: .ksOrange)
                        ActionButton(title: "Donate to Kind Sisters", backgroundColor: .ksOrange)
                    }
                    .padding(.vertical, 30)
                }
            }
            .navigationTitle("About")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct TeamMemberCard: View {
    let imageURL: String
    let name: String
    let role: String
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 10) {
                AsyncImage(url: URL(string: imageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray.opacity(0.3)
                }
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                
                VStack(spacing: 5) {
                    Text(name)
                        .font(.redHat(size: 22, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text(role)
                        .font(.redHat(size: 18))
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 15)
            .frame(maxWidth: .infinity)
            .background(Color.ksLightPink)
            .cornerRadius(50)
            
            Text("At Kind Sisters, we believe that every woman deserves to feel seen, valued, and heard. Our initiatives are designed to foster confidence, connection, and growth, ensuring that no one has to navigate life's challenges alone. By bringing women together, we build networks of strength and solidarity that can transform both individuals and communities (generated text, replace later)")
                .font(.redHat(size: 14))
                .foregroundColor(.black)
                .padding(25)
                .frame(maxWidth: .infinity)
                .background(Color.white)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 50)
                .stroke(Color.ksLightPink, lineWidth: 2)
        )
    }
}

struct ActionButton: View {
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Button(action: {}) {
            Text(title)
                .font(.redHat(size: 18, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(25)
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    AboutView()
}
