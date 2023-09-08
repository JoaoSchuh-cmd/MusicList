//
//  Music.swift
//  MusicList
//
//  Created by user241342 on 9/7/23.
//

import Foundation

struct Music: Identifiable {
    let id = UUID()
    let imgName: String
    let title: String
    let author: String
}
