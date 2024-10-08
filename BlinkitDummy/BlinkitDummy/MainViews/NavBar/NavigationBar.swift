//
//  NavigationBar.swift
//  BlinkitDummy
//
//  Created by Rahul Rai on 07/08/24.
//

import SwiftUI

struct NavigationBar: View {
    let navTitle: String
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:8){
            HStack{
                Button{
                    dismiss()
                }label:{
                    HStack(spacing:5){
                        Image(systemName: "arrow.backward")
                            .font(.system(size: 18).weight(.bold))
                            .foregroundColor(Color.black)
                        Text(navTitle)
                            .font(.system(size:18).weight(.bold))
                            .foregroundColor(Color.black)
                    }
                    .frame(height: 44)
                }
                Spacer()
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18))
                    .frame(width: 44, height: 44, alignment: .trailing)
                    .foregroundColor(Color.black)
                
                
            }
            .frame(height: 10)
        }
        .frame(height: 15, alignment: .top)
        .padding(.horizontal, 15)
        .padding(.top, 30)
        .background(Color.white)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    NavigationBar(navTitle: "Sauces & Spreads")
}
