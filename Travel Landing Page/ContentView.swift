//
//  ContentView.swift
//  Travel Landing Page
//
//  Created by Vanessa Cassandra on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var showAlert: Bool = false
    @State private var isShowingDetailSheet: Bool = false
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            Image("go-to-beach")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay {
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                }
            
            VStack {
                HStack {
                    Button {
                        showAlert = true
                    } label: {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .accentColor(.yellow)
                            .padding(10)
                            .background(Color("DarkGreen"))
                            .clipShape(Circle())
                            .frame(maxWidth: .infinity)
                    }
                    .alert("Not yet available", isPresented: $showAlert) {
                    } message: {
                        Text( "Currently on active development")
                    }
                    
                    Text("Travel")
                        .frame(maxWidth: .infinity)
                    
                    Button { isShowingDetailSheet.toggle() } label: {
                        Image(systemName: "cart.badge.plus")
                            .renderingMode(.original)
                            .accentColor(.green)
                            .padding(10)
                            .background(Color("DarkGreen"))
                            .clipShape(Circle())
                            .frame(maxWidth: .infinity)
                    }
                    .sheet(isPresented: $isShowingDetailSheet) {
                        DetailSheetView()
                            .presentationDetents([.fraction(0.5), .medium])
                            .presentationDragIndicator(.visible)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Start your Adventure and Go Travel Now")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: 180)
                        .padding(.bottom, 20)
                    
                    Text("Discover local destinations beauty with Bluesky and travel with pride.")
                }
                .padding(50)
                
                Spacer()
                
            } //: VStack
            .padding(50)
        } //: ZStack
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
