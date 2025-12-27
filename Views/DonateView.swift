import SwiftUI

struct DonateView: View {
    @State private var selectedTab = 0
    @State private var selectedAmount: Int? = 10
    @State private var customAmount = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    Text("Donate to Kind Sisters")
                        .font(.bigShoulders(size: 48, weight: .bold))
                        .foregroundColor(.ksPink)
                        .padding(.top, 20)
                    
                    // Donation Info
                    HStack(spacing: 30) {
                        AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/20dcf6a2f319414d1d87d2c93c7eebd2735903b3?width=820")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color.gray.opacity(0.3)
                        }
                        .frame(width: 150, height: 180)
                        .padding(.leading, 30)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Kind Sisters donation write up - where donations are going\n\nBecome a Friend of Kind Sisters with a monthly donation.\n\nAll donations of $2 or more are tax deductible. You can donate direct to our bank account below and also to our account at the Containers for Change project.")
                                .font(.redHat(size: 18))
                                .foregroundColor(.black)
                        }
                        .padding(.trailing, 30)
                    }
                    
                    // Donation Form
                    VStack(spacing: 0) {
                        // Tabs
                        HStack(spacing: 0) {
                            DonationTabButton(title: "Donate Once", isSelected: selectedTab == 0) {
                                selectedTab = 0
                            }
                            
                            DonationTabButton(title: "Donate Monthly", isSelected: selectedTab == 1) {
                                selectedTab = 1
                            }
                        }
                        
                        // Amount Selection
                        VStack(spacing: 20) {
                            HStack(spacing: 15) {
                                AmountButton(amount: 10, selectedAmount: $selectedAmount)
                                AmountButton(amount: 25, selectedAmount: $selectedAmount)
                                AmountButton(amount: 50, selectedAmount: $selectedAmount)
                                
                                Button("Other..") {
                                    selectedAmount = nil
                                }
                                .font(.redHat(size: 20))
                                .foregroundColor(.black)
                                .frame(width: 80, height: 40)
                                .background(Color.ksLighterOrange)
                            }
                            .padding(.top, 20)
                            
                            Button("Donate") {}
                                .font(.redHat(size: 22, weight: .bold))
                                .foregroundColor(Color(red: 0.941, green: 0.941, blue: 0.941))
                                .padding(.horizontal, 120)
                                .padding(.vertical, 15)
                                .background(Color.ksPink)
                                .cornerRadius(25)
                            
                            Text("Donations of $2 or more are tax deductible.")
                                .font(.redHat(size: 14))
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, 20)
                        .background(Color.white)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.horizontal, 30)
                    
                    // Impact Message
                    HStack(spacing: 20) {
                        Spacer()
                        
                        VStack(spacing: 10) {
                            AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/e66577777840af1141fe959171bd06b5275c2671?width=772")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                Color.gray.opacity(0.3)
                            }
                            .frame(width: 200, height: 180)
                            .cornerRadius(10)
                            
                            Text("Provide a family with hygiene products with every $50 donation.")
                                .font(.redHat(size: 18))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 200)
                        }
                        
                        Spacer()
                    }
                    
                    // Containers for Change
                    VStack(spacing: 20) {
                        HStack(spacing: 40) {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Containers for Change")
                                    .font(.bigShoulders(size: 40, weight: .bold))
                                    .foregroundColor(.black)
                                
                                Text("ID: C11083530")
                                    .font(.redHat(size: 30, weight: .medium))
                                    .foregroundColor(.black)
                                
                                Text("Please quote our Scheme ID when depositing refundable containers.")
                                    .font(.redHat(size: 18))
                                    .foregroundColor(.black)
                            }
                            .padding(.leading, 40)
                            
                            AsyncImage(url: URL(string: "https://api.builder.io/api/v1/image/assets/TEMP/2e703db7d50f8f57c2529aafd5aeca61d85eebaa?width=470")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            } placeholder: {
                                Color.gray.opacity(0.3)
                            }
                            .frame(width: 120, height: 120)
                            .padding(.trailing, 40)
                        }
                    }
                    .padding(.vertical, 30)
                    .background(Color.ksOrange)
                }
            }
            .navigationTitle("Donate")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct DonationTabButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.redHat(size: 20))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(isSelected ? Color.ksCardBackground : Color.white)
                .overlay(
                    Rectangle()
                        .frame(height: isSelected ? 7 : 3)
                        .foregroundColor(isSelected ? Color.ksPink : Color.black),
                    alignment: .bottom
                )
        }
    }
}

struct AmountButton: View {
    let amount: Int
    @Binding var selectedAmount: Int?
    
    var body: some View {
        Button("$\(amount)") {
            selectedAmount = amount
        }
        .font(.redHat(size: 20))
        .foregroundColor(.black)
        .frame(width: 80, height: 40)
        .background(selectedAmount == amount ? Color.ksCardBackground : Color.ksCardBackground)
    }
}

#Preview {
    DonateView()
}
