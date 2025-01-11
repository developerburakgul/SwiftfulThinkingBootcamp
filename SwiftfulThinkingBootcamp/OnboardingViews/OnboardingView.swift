//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 11.01.2025.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding States
    /*
     0 - welcome screen
     1 - add name
     2 - add age
     3 - add gender
     */
    
    // onboarding inputs
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // app storage
    @AppStorage("name")  var currentUserName: String?
    @AppStorage("age")  var currentUserAge: Int?
    @AppStorage("gender")  var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            
            ZStack {
                switch onboardingState {
                case 0 :
                    welcomeSection
                        .transition(transition)
                case 1 :
                    addNameSection
                        .transition(transition)
                case 2 :
                    addAgeSection
                        .transition(transition)
                case 3 :
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.red)
                }
            }
            
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

//MARK: - Components
extension OnboardingView {
    private var bottomButton: some View {
        Text(
            onboardingState == 0
            ? "SIGN UP"
            : onboardingState == 3
            ? "FINISH"
            : "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .circular)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }
            
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techiniques")
                .foregroundColor(.white)
                .fontWeight(.medium)
            
            Spacer()
            Spacer()
            
        }
        .multilineTextAlignment(.center)
        .padding(20)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What is your name")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
                
            Spacer()
            Spacer()
            
        }
        .padding(20)
        
    }
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What is your Age")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            )
            .accentColor(.white)
            Spacer()
            Spacer()
            
        }
        .padding(20)
        
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What is your Gender")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker(selection: $gender, label:
                Text("Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            , content: {
                Text("female").tag("female")
                Text("male").tag("male")
                
            })
            .pickerStyle(MenuPickerStyle())
    
            Spacer()
            Spacer()
            
        }
        .padding(20)
        
    }
}

//MARK: - Functions
extension OnboardingView {
    func handleNextButtonPressed() {
        
        switch onboardingState {
        case 1 :
            guard name.count >= 3 else {
                showAlert(title: "your name must be at least 3 characters long !!")
                return
            }
            
        case 3:
            guard gender.count > 3 else {
                showAlert(title: "Please select a gender before moving forward")
                return
            }
        default :
            break
        }
        
        
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
        
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
        
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}
