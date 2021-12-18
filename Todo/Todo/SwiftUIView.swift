//
//  SwiftUIView.swift
//  Todo
//
//  Created by 岩佐力 on 2021/11/29.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var st:String = ""
    
    var body: some View {
        Text(st)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
