//
//  ProfileView.swift
//  TwitterSwiftUIYoutube
//
//  Created by 奈木野諭吉 on 2023/10/02.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomLeading){
                Color(.systemBlue)
                    .ignoresSafeArea()
                
                Circle()
                    .frame(width: 72,height: 72)
                    .offset(x: 16,y: 24)
            }
            .frame(height: 96)
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
