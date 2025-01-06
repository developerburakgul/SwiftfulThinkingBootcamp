//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Burak Gül on 5.01.2025.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 2
    
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    var body: some View {
        
        //MARK: - TabView bu uygulamanın genel akışını oluşturuyor
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("PROFILE TAB")
//                .tabItem {
//                    Text("Profile")
//                    Image(systemName: "person.fill")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
        
        //MARK: - Another Example
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
        }
        .background(
            RadialGradient(
                colors: [Color.red, Color.blue],
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: [.top, .leading, .trailing])
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go To Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
            
        }
        
    }
}
