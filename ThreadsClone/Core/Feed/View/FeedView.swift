//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Vasan on 29/09/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCellView()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh Thread")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button{
                    
                }label: {
                    Image(systemName:"arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
    
}
