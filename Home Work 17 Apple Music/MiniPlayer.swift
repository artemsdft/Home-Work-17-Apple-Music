//
//  MiniPlayer.swift
//  Home Work 17 Apple Music
//
//  Created by Артем Дербин on 27.08.2022.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image("korn")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                
                Text("Freak On a Leash")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
            }
            .padding(.horizontal)
        }
        .frame(height: 80)
        .offset(y: -48)
    }
}


struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
