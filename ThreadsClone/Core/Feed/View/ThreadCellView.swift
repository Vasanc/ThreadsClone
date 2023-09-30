//
//  ThreadCellView.swift
//  ThreadsClone
//
//  Created by Vasan on 29/09/23.
//

import SwiftUI

struct ThreadCellView: View {
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 12){
                Image("Person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment:.leading, spacing: 4){
                    HStack {
                        Text("Test User")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    
                    Text("lorem ipsum")
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    
                    HStack(spacing:16){
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "heart")
                        }
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button{
                            
                        }label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .padding(.vertical, 8)
                    .tint(.black)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCellView()
}
