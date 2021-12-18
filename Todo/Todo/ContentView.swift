//
//  ContentView.swift
//  Todo
//
//  Created by law2500 on 2021/11/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var newItem = ""
    @State var toDoList: [String] = []
    @ObservedObject var op = clasy()
    
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("新しい予定を追加")
                        .font(.largeTitle)
                        .padding(.leading)
                    Spacer()
                }
                HStack {
                    
                    
                    TextField("新しい予定を追加してください", text: $newItem)
                        .frame(width: 300)
                    Button(action: {
                        self.op.toDoListd.append(self.newItem)
                        self.newItem = ""
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 50, height: 30)
                                .foregroundColor(.green)
                            Text("追加")
                                .foregroundColor(.white)
                        }
                    })
                }
                
                    
                List(){
                    ForEach(op.toDoListd, id: \.self) { item in
                        NavigationLink(destination: SwiftUIView(st: item )) {
                            Open(ji: item)
                    }
                        
                        
                        
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Open: View {
    
    
    @ObservedObject var opp = clasy()
    @State var ji: String
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("ようこそ")
                        .background(.blue)
                        .foregroundColor(.white)
                    Text("こんちは")
                        .background(.green)
                        .foregroundColor(.white)
                }
                Text(ji)
                    .background(.yellow)
                    .background(.white)
            }
        }
    }
}
