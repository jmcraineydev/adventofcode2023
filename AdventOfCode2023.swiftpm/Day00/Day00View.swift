//
//  SwiftUIView.swift
//  
//
//  Created by JASON MCRAINEY on 2023/12/03.
//

import SwiftUI

struct Day00View: View {
    
    
    @StateObject var viewModel = Day00ViewModel()
  
    
    var body: some View {
        ZStack{
            
            if viewModel.haveArrayOfNumber {
                ScrollView{
                    List(viewModel.arrayOfInts, id: \.self) { int in
                        Text(String(int))
                    }
                }
                Spacer()
                Text("SUM of Total Numbers: \(viewModel.totalSum)")
            }
            
        }.onAppear{
            viewModel.createArrayOfInts()
        }

    }
}

#Preview {
    Day00View()
}
