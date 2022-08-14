//
//  ContentView.swift
//  CW6
//
//  Created by fawziah hussain on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var hight =  ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        VStack{
            Image("new")
        TextField ("Weight", text: $weight)
            
        TextField ("Weight", text: $hight)
            
            Button {
                result = bmiClac(w: Double(weight) ?? 0.0, h: Double(hight) ?? 0.0)
                if result <= 20{
                    health = "ضعيف"
                }else if result >= 25{
                    health = "جيد"
                } else{
                    health = "سمين"
                    
                }
            } label: {
                Text("احسب")
            }
            Text("BMI= \(result)")
            Text("الحالة=\(health)")
           
        }
       
   
     }
    func bmiClac(w: Double, h:Double) -> Double{
          return w / (h * h)
      }
}
                
                
                
              

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
  }

