import SwiftUI

struct HomeView: View {
    @State private var showQuickExit = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    // Hero Section
                    HeroSection()
                    
                    // Action Cards
                    ActionCardsSection()
                    
                    // Our Mission
                    OurMissionSection()
                    
                    // Stories of Hope
                    TestimonialsSection()
                    
                    // Newsletter Signup
                    NewsletterSection()
                    
                    // Corporate Sponsors
                    CorporateSponsorsSection()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Kind Sisters")
                        .font(.redHat(size: 20, weight: .bold))
                        .foregroundColor(.ksPink)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Quick Exit") {
                        showQuickExit = true
                    }
                    .font(.redHat(size: 16))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.ksGrey)
                    .foregroundColor(.black)
                    .cornerRadius(5)
                }
            }
            .alert("Quick Exit", isPresented: $showQuickExit) {
                Button("Cancel", role: .cancel) { }
                Button("Exit", role: .destructive) {
                    // Handle quick exit
                }
            } message: {
                Text("This will close the app for safety. Continue?")
            }
        }
    }
}

struct HeroSection: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/57faf3f7a001a6bd47324a0c22ccb958ac87e756?width=2880")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(height: 400)
            .clipped()
            
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("A grass-roots nonprofit organisation dedicated to serving vulnerable groups of people and those suffering hardship in the City of Stirling and surrounding areas in Perth.")
                        .font(.redHat(size: 20))
                        .foregroundColor(.white)
                        .padding(25)
                        .background(Color.ksPink)
                        .cornerRadius(50)
                        .padding(.trailing, 40)
                }
                .padding(.horizontal, 20)
                .padding(.top, 40)
                
                Text("Creating space for community.")
                    .font(.system(size: 36, weight: .regular, design: .serif))
                    .italic()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
            }
            .padding(.top, 40)
        }
    }
}

struct ActionCardsSection: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ActionCard(title: "Volunteer with\nKind Sisters", color: .ksPink)
                ActionCard(title: "Donate to\nKind Sisters", color: .ksPink)
            }
            
            HStack(spacing: 0) {
                ActionCard(title: "Projects & Events", color: .ksPink)
            }
        }
    }
}

struct ActionCard: View {
    let title: String
    let color: Color
    
    var body: some View {
        Button(action: {}) {
            Text(title)
                .font(.bigShoulders(size: 36))
                .foregroundColor(Color(red: 0.949, green: 0.882, blue: 0.902))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .frame(height: 180)
                .background(color)
        }
    }
}

struct OurMissionSection: View {
    var body: some View {
        HStack(spacing: 30) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Our Mission")
                    .font(.bigShoulders(size: 40, weight: .regular))
                    .foregroundColor(.black)
                
                Text("At Kind Sisters, we believe that every woman deserves to feel seen, valued, and heard. Our initiatives are designed to foster confidence, connection, and growth, ensuring that no one has to navigate life's challenges alone. By bringing women together, we build networks of strength and solidarity that can transform both individuals and communities (generated text, replace later)")
                    .font(.redHat(size: 15))
                    .foregroundColor(.black)
            }
            .padding(.leading, 20)
            
            AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/1610dcb6927bbea1c42715cd218547f14592b0ee?width=796")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 150, height: 150)
            .padding(.trailing, 20)
        }
        .padding(.vertical, 40)
        .background(Color.white)
    }
}

struct TestimonialsSection: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Stories of Hope")
                .font(.bigShoulders(size: 40))
                .foregroundColor(.black)
                .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    TestimonialCard()
                    TestimonialCard()
                    TestimonialCard()
                }
                .padding(.horizontal, 20)
            }
            .padding(.bottom, 30)
        }
        .background(Color.white)
    }
}

struct TestimonialCard: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Kind Sisters is a truly inspiring grassroots nonprofit that makes a real difference. Thr...\n\n")
                .font(.redHat(size: 18))
                .foregroundColor(.white)
            +
            Text("Name")
                .font(.redHat(size: 18, weight: .bold))
                .foregroundColor(.white)
        }
        .multilineTextAlignment(.center)
        .padding(40)
        .frame(width: 280)
        .background(Color.ksPink)
        .cornerRadius(25)
    }
}

struct NewsletterSection: View {
    @State private var fullName = ""
    @State private var email = ""
    
    var body: some View {
        HStack(spacing: 30) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Sign Up to Our Newsletter")
                    .font(.bigShoulders(size: 40))
                    .foregroundColor(.black)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Full Name:")
                        .font(.redHat(size: 20))
                    
                    TextField("", text: $fullName)
                        .textFieldStyle(RoundedTextFieldStyle())
                    
                    Text("Email:")
                        .font(.redHat(size: 20))
                    
                    TextField("", text: $email)
                        .textFieldStyle(RoundedTextFieldStyle())
                    
                    Button("Submit") {}
                        .font(.redHat(size: 28, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal, 50)
                        .padding(.vertical, 15)
                        .background(Color.ksPink)
                        .cornerRadius(25)
                }
                
                Button("View our privacy policy.") {}
                    .font(.redHat(size: 16))
                    .underline()
                    .foregroundColor(.black)
            }
            .padding(.leading, 30)
            
            AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/7bedc0931cba9f49411ace616cacce60629fb227?width=776")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 150, height: 180)
            .cornerRadius(80)
            .padding(.trailing, 30)
        }
        .padding(.vertical, 40)
        .background(Color.white)
    }
}

struct CorporateSponsorsSection: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Corporate Sponsors")
                .font(.bigShoulders(size: 40))
                .foregroundColor(.black)
                .padding(.top, 30)
            
            VStack(alignment: .center, spacing: 8) {
                Text("SJM Bookkeeping Pty Ltd")
                Text("GBIT Automation")
                Text("Inner Wheel Society Scarborough")
                Text("Mens Shed Wanneroo")
                Text("Sisters of Charity Inc")
                Text("Street Smart Australia")
                Text("Sudbury Community House")
                Text("Relate Counselling")
            }
            .font(.redHat(size: 18, weight: .bold))
            .foregroundColor(.black)
            .padding(.bottom, 30)
        }
        .background(Color.white)
    }
}

struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.ksPink, lineWidth: 2)
            )
    }
}

#Preview {
    HomeView()
}
