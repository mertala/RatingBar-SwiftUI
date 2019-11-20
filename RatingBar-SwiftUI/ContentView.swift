//
//  ContentView.swift
//  RatingBar-SwiftUI
//
//  Created by Mert Ala on 20.11.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
     @State var selected = -1
    
    var body: some View {
    
        VStack{
            
            if self.selected != -1{
            
            Text("Rating = \(self.selected + 1) ").padding(.bottom, 10)
            }
            HStack{
                ForEach(0..<5) { i in
                    Image(systemName:"star.fill").resizable().frame(width:30, height: 30).foregroundColor(self.selected >= i ? .yellow :.gray).onTapGesture {
                        self.selected = i
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

