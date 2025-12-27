import SwiftUI

struct ContactView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var subject = ""
    @State private var message = ""
    @State private var newsletterName = ""
    @State private var newsletterEmail = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    Text("Contact")
                        .font(.bigShoulders(size: 48, weight: .bold))
                        .foregroundColor(.ksPink)
                        .padding(.top, 20)
                    
                    // Contact Info
                    VStack(spacing: 10) {
                        HStack {
                            Text("Email  -  ")
                                .font(.redHat(size: 20))
                            
                            Button("info@kindsisters.org.au") {}
                                .font(.redHat(size: 20))
                                .underline()
                                .foregroundColor(.black)
                        }
                        
                        Text("Postal Address -  PO Box 647 Duncraig 6023")
                            .font(.redHat(size: 20))
                            .foregroundColor(.black)
                    }
                    
                    // Contact Form
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Leave a message:")
                            .font(.redHat(size: 22, weight: .bold))
                            .foregroundColor(.black)
                            .padding(.horizontal, 30)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Full Name")
                                .font(.redHat(size: 20))
                            TextField("", text: $fullName)
                                .textFieldStyle(RoundedTextFieldStyle())
                            
                            Text("Your Email")
                                .font(.redHat(size: 20))
                            TextField("", text: $email)
                                .textFieldStyle(RoundedTextFieldStyle())
                            
                            Text("Subject")
                                .font(.redHat(size: 20))
                            TextField("", text: $subject)
                                .textFieldStyle(RoundedTextFieldStyle())
                            
                            Text("Message")
                                .font(.redHat(size: 20))
                            TextEditor(text: $message)
                                .frame(height: 200)
                                .padding()
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.ksPink, lineWidth: 2)
                                )
                        }
                        .padding(.horizontal, 30)
                        
                        Button("Submit") {}
                            .font(.redHat(size: 30, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.horizontal, 60)
                            .padding(.vertical, 20)
                            .background(Color.ksPink)
                            .cornerRadius(25)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.horizontal, 30)
                        
                        Button("View our privacy policy.") {}
                            .font(.redHat(size: 16))
                            .underline()
                            .foregroundColor(.black)
                            .padding(.horizontal, 30)
                    }
                    
                    // Donate Button
                    ActionButton(title: "Donate to Kind Sisters", backgroundColor: .ksOrange)
                        .padding(.top, 20)
                    
                    // Newsletter Section
                    VStack(spacing: 20) {
                        HStack(spacing: 30) {
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Sign Up to Our Newsletter")
                                    .font(.bigShoulders(size: 40))
                                    .foregroundColor(.black)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Full Name:")
                                        .font(.redHat(size: 20))
                                    
                                    TextField("", text: $newsletterName)
                                        .textFieldStyle(RoundedTextFieldStyle())
                                    
                                    Text("Email:")
                                        .font(.redHat(size: 20))
                                    
                                    TextField("", text: $newsletterEmail)
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
                            
                            Spacer()
                        }
                    }
                    .padding(.vertical, 30)
                    .background(Color.white)
                }
            }
            .navigationTitle("Contact")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ContactView()
}
