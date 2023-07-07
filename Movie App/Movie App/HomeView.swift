//
//  HomeView.swift
//  Movie App
//
//  Created by Amashi Silva on 2023-07-07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
           TopView()
            HStack(){
                Text("Dinith Perera")
                    .font(.system(size: 26))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                
                Spacer()
                
            }
           
            
            
            
          
            HStack{
                VStack(alignment:.leading){
                    
                    
                    HStack(alignment:.center){
                        VStack {
                            
                        }
                        .frame(width: 8, height: 8)
                        .background(Color(hex:"C10000"))
                        .cornerRadius(10)
                        
                        Text("Live now")
                            .foregroundColor(Color(hex:"C10000"))
                            
                            .font(.system(size: 13))
                            .fontWeight(.heavy)
                    }
                  
                   
                    .padding(.horizontal,6)
                    .padding(.vertical,2)
                    .background(Color(hex: "FEE0DF"))
                    .cornerRadius(60)
                    
                    Text("Nonton bareng Ashiap Man ")
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .lineLimit(2)
                        .padding(.top,4)
                        .lineSpacing(5)
                    
                    Text("Nobar Livestrem Ashiap man 2022 ")
                        .padding(.top,-8)
                        .foregroundColor(Color.white)
                        .font(.system(size: 14))
                        .lineLimit(2)
                        .opacity(0.8)
                   
                      
                    
                    
                    
                   
                    Spacer()
                    Button {
                                print("Image tapped!")
                            } label: {
                        Text("Click here")
                            .foregroundColor(Color.white)
                            .font(.system(size: 12))
                            .fontWeight(.semibold)
                            .padding(.horizontal,20)
                            .padding(.vertical,5)
                            .background(Color(hex: "0285FE"))
                            .cornerRadius(60)
                    }
                   
                    
                    
                        
                }
                .padding(13)
                
               
                
                Spacer()
                VStack{
                    Image("ashiapMv")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                       
                }
              
              
            }
           
            .frame(height: 200)
            .frame(maxWidth:.infinity)
            .background(
                Image("ashiapMv")
                    .resizable()
                    .blur(radius: 22))
            .cornerRadius(22)
            .padding(.top,12)
            .padding(.horizontal)
            
             DotView()

            Spacer()
            
        }
       
        
        .padding()
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(Color(hex:"1A1A1A"))
       
       
        
    
    }
}


struct TopView:View{
    var body: some View{
        HStack{
            Text("Welcome back,")
                .font(.system(size: 12))
                .foregroundColor(Color.white)
            Spacer()
            HStack(spacing:17){
                Group{
                    Image(systemName: "bell")
                    
                    Image(systemName: "magnifyingglass")
                    
                }
                .foregroundColor(Color.white)
                .font(.system(size: 22))
                
               
                
                
            }
            
        }
    }
}

struct DotView:View{
    var body: some View{
        HStack{
            VStack{
                
            }
            .frame(width: 10, height: 10)
            .background(Color(hex: "484647"))
            .cornerRadius(10)
            .padding(.top,8)
           
            
            VStack{
                
            }
            .frame(width: 10, height: 10)
            .background(Color(hex: "0285FF"))
            .cornerRadius(10)
            .padding(.top,10)
            VStack{
                
            }
            .frame(width: 10, height: 10)
            .background(Color(hex: "484647"))
            .cornerRadius(10)
            .padding(.top,10)
            VStack{
                
            }
            .frame(width: 10, height: 10)
            .background(Color(hex: "484647"))
            .cornerRadius(10)
            .padding(.top,10)
            VStack{
                
            }
            .frame(width: 10, height: 10)
            .background(Color(hex: "484647"))
            .cornerRadius(10)
            .padding(.top,10)
            
            
            Spacer()
            
        }
        .padding(.horizontal)

    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
