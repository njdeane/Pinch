//
//  ControlImageView.swift
//  Pinch
//
//  Created by Nic Deane on 2/1/2022.
//

import SwiftUI

struct ControlImageView: View {
  let icon: String
  
  var body: some View {
    Image(systemName: icon)
      .font(.system(size: 36))
  }
}
