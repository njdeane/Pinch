//
//  ContentView.swift
//  Pinch
//
//  Created by Nic Deane on 28/12/2021.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - Properties
  @State private var isAnimating: Bool = false
  @State private var imageScale: CGFloat = 1
  
  // MARK: - Functions
  
  // MARK: - Content
  
  
  var body: some View {
    NavigationView {
      ZStack {
        Image("magazine-front-cover")
          .resizable()
          .scaledToFit()
          .cornerRadius(10)
          .padding()
          .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
          .opacity(isAnimating ? 1 : 0)
          .animation(.linear(duration: 1), value: isAnimating)
          .scaleEffect(imageScale)
          .onTapGesture(count: 2) {
            if imageScale == 1 {
              withAnimation(.spring()) {
                imageScale = 5
              }
            } else {
              withAnimation(.spring()) {
                imageScale = 1
              }
            }
          }
      } //: ZStack
      .navigationTitle("Pinch & Zoom")
      .navigationBarTitleDisplayMode(.inline)
      .onAppear {
        isAnimating.toggle()
      }
    } //: NavigationView
    .navigationViewStyle(.stack)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.dark)
  }
}
