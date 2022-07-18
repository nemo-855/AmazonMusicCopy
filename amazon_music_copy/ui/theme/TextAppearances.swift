//
//  TextAppearances.swift
//  amazon_music_copy
//
//  Created by Kohei Inoue on 2022/07/17.
//

import Foundation
import SwiftUI

struct HeaderText : View {
    private let text: String
    private let color: Color
    
    init(
        text: String,
        color: Color? = nil
    ) {
        self.text = text
        self.color = color ?? Color(Colors.white.name)
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 18))
            .fontWeight(.bold)
            .foregroundColor(color)
    }
}

struct MediumText : View {
    private let text: String
    private let color: Color
    
    init(
        text: String,
        color: Color? = nil
    ) {
        self.text = text
        self.color = color ?? Color(Colors.white.name)
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 16))
            .foregroundColor(color)
    }
}

struct SmallText : View {
    private let text: String
    private let color: Color
    
    init(
        text: String,
        color: Color? = nil
    ) {
        self.text = text
        self.color = color ?? Color(Colors.white.name)
    }
    
    var body: some View {
        Text(text)
            .font(.system(size: 14))
            .foregroundColor(color)
    }
}
