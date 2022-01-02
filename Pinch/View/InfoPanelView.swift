//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Nic Deane on 2/1/2022.
//

import SwiftUI

struct InfoPanelView: View {
  var scale: CGFloat
  var offSet: CGSize
  
  @State private var isInfoPanelVisable: Bool = false
  
  var body: some View {
    HStack {
      Image(systemName: "circle.circle")
        .symbolRenderingMode(.hierarchical)
        .resizable()
        .frame(width: 30, height: 30)
        .onLongPressGesture(minimumDuration: 0.5) {
          withAnimation(.easeOut) {
            isInfoPanelVisable.toggle()
          }
        }
      
      Spacer()
      
      HStack(spacing: 2) {
        Image(systemName: "arrow.up.left.and.arrow.down.right")
        Text("\(scale)")
        
        Spacer()
        
        Image(systemName: "arrow.left.and.right")
        Text("\(offSet.width)")
        
        Spacer()
        
        Image(systemName: "arrow.up.and.down")
        Text("\(offSet.height)")
        
        Spacer()
      }
      .font(.footnote)
      .padding(8)
      .background(.ultraThinMaterial)
      .cornerRadius(8)
      .frame(maxWidth: 420)
      .opacity(isInfoPanelVisable ? 1 : 0)
      
      Spacer()
    }
  }
}

struct InfoPanelView_Previews: PreviewProvider {
  static var previews: some View {
    InfoPanelView(scale: 1, offSet: .zero)
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
