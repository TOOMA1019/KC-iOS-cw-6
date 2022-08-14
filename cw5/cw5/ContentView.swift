//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            RowView(myCounter: $counter[0], title: "استغفر الله العظيم")
            RowView(myCounter: $counter[1], title: "سبحان الله وبحمده")
            RowView(myCounter: $counter[2], title: "سبحان الله العظيم")
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    @Binding var myCounter: Int
    @State var title : String
    var body: some View {
        HStack{
            Text(title).font(.title)
            Spacer()
            Text("\(myCounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    myCounter = myCounter + 1
                }
        }.padding()
    }
}
