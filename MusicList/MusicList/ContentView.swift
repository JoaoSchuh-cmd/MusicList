//
//  ContentView.swift
//  Aula3Exemplo4
//
//  Created by Fabio Binder on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    let dataModel = DataModel()
    @State private var offsetY: CGFloat = 0.0
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 250, maxHeight: 250)
            
            ScrollView(showsIndicators: false) {
                Spacer()
                    .frame(height: 280)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image(systemName: "arrow.down .circle.fill")
                        Image(systemName: "person.fill.badge.plus")
                        Spacer()
                        Image(systemName: "play.circle.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.orange)
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Playlist Maneira")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Essa playlist é destinada aos melhores Jr. Learners do Planeta ADDA")
                        HStack {
                            Image("yoda")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .cornerRadius(20)
                            Text("Playlist de Yosda")
                                .font(.headline)
                        }
                    }
                    .padding(.bottom, 30)
                    ForEach(dataModel.musics) { music in
                        HStack {
                            Image(music.imgName)
                                .resizable()
                                .frame(width: 60, height: 60)
                            VStack(alignment: .leading) {
                                Text(music.title)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text(music.author)
                                    .font(.headline)
                            }
                            Spacer()
                            Button(action: {
                                
                            }) {
                                Image(systemName: "ellipsis")
                                    .foregroundColor(Color.black)
                            }
                        }
                        .padding(.bottom, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.clear)
                    }
                }
                .padding(.horizontal, 30)
                .background(.white)
            }
        }
        .background(Color(uiColor: .systemGray6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
