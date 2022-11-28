//
//  DetailSheetView.swift
//  Travel Landing Page
//
//  Created by Vanessa Cassandra on 28/11/22.
//

import SwiftUI

struct DetailSheetView: View {
    @State private var showWebView: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Pink Beach, Flores")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Spacer()
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.8")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            .padding(.vertical)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 24) {
                    CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green)
                    CategoryItemView(title: "Food", icon: "fork.knife.circle.fill", color: .orange)
                    CategoryItemView(title: "Stays", icon: "house.fill", color: .blue)
                    CategoryItemView(title: "Ride", icon: "sailboat.fill", color: .purple)
                }
            }
            
            Text("About Destination")
                .fontWeight(.bold)
                .padding(.vertical, 12)
            
            Text("Pink Beach, or Pantai Merah, as it aptly named, is one of seven pink beaches on the planet. This was awesome")
                .padding(.bottom, 22)
            
            HStack {
                Text("$81,39")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Link(destination: URL(string: "https://www.apple.com")!) {
                    HStack {
                        Image(systemName: "bag")
                        Text("Join Tour")
                    }
                    .font(.system(size: 22))
                    .padding(.horizontal, 22)
                    .padding(.vertical, 14)
                    .foregroundColor(.white)
                    .background(LinearGradient(
                        colors: [.indigo, .purple ],
                        startPoint: .trailing,
                        endPoint: .leading))
                    .cornerRadius(50)
                    .shadow(radius: 10, x: 2, y: 2)
                }
            }
            
           
        } //: VSTACK
        .padding()
        .foregroundColor(.black)
    }
}

struct DetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSheetView()
    }
}

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    var title: String
    var icon: String
    var color: Color
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(systemName: icon)
                .symbolRenderingMode(.multicolor)
                .foregroundColor(color)
                .padding(.bottom, 1)
                .font(.system(size: 22))
            
            Text(title)
                .foregroundColor(.black)
        } //: VSTACK
        .padding()
        .cornerRadius(60)
        .background(Color("BrokenWhite"))
        
    }
}
