//
//  DetailView.swift
//  Movie App
//
//  Created by Amashi Silva on 2023-07-09.
//

import SwiftUI

struct DetailView: View {
    
    @State var castShow : Bool=true
    
    var body: some View {
        VStack{
            VStack{
                
                VStack{
                    
                        HStack{
                            Spacer()
                            Image(systemName: "square.and.arrow.up.circle")
                                .foregroundColor(Color.white)
                                .frame(width: 35,height: 35)
                                
                                .fontWeight(.bold)
                                
                        
                           
                       
                        
                       
                            
                    }
                  
                    .padding(.top,-100)
                    .padding(20)
                    
                    VStack(spacing: 5){
                        Image(systemName: "play.circle")
                            .foregroundColor(Color.white)
                        Text("Play trailer")
                            .foregroundColor(Color.white)
                            .fontWeight(.medium)
                           
                        
                    }
                    
                }
                .frame(width:350, height: 30)
               
                .background(Image("avatar")
                   
                    .resizable()
                    .frame(width:350, height: 250)
                    .scaledToFill()
                    .cornerRadius(20)
                          
                )
                
            }
            
            .frame(height:250)
            .frame(maxWidth: .infinity)
           
            .background(Image("avatar")
                .resizable()
                .frame(height:300)
                .scaledToFit()
                .blur(radius: 60)
                
            )
            
            Spacer()
            VStack{
                VStack{
                    
                }
                .frame(width: 50,height: 4)
                .background(Color.white)
                .cornerRadius(10)
               
                HStack{
                    Text("Avatar: The Way Of Water")
                        .foregroundColor(Color.white)
                    
                        .padding(.top)
                        .font(.system(size:20))
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                }
                HStack(spacing:10){
                    HStack{
                        Text("18+")
                           
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top,4)
                            .padding(.bottom,4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 2))
                            
                      
                        
                    }
                  
                    .cornerRadius(10)
                   
                    
                   
                    HStack(spacing: 5){
                        Text("3h 12m ")
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                           
                        
                        
                    }
                    HStack{
                        Text("•")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                            .font(.system(size: 14))
                        
                        
                    }
                    HStack{
                        Text(" Sci-Fi  ")
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                        
                    }
                    HStack{
                        Image("square.and.arrow.down")
                            .foregroundColor(Color.white)
                    }
                    HStack{
                        Text(" 2022")
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                        
                    }
                 
                    Spacer()
                    
                }
                .padding(.top,1)
                .opacity(0.5)
              
                
                HStack{
                    VStack{
                        Image(systemName:"square.and.arrow.down")
                            .foregroundColor(Color.white)
                            .padding(.leading,1)
                            .opacity(0.9)

                        
                        Text("Download")
                            .padding(.top,3)
                            .foregroundColor(Color.white)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .opacity(0.9)
                    }
                    Spacer()
                    
                    Button {
                        print("Image tapped!")
                    } label: {
                        Text("Play now")
                            .frame(width: 200,height: 30)
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .padding(.horizontal,20)
                            .padding(.vertical,5)
                            .background(Color(hex: "0285FE"))
                            .cornerRadius(60)
                            .padding(.leading)
                           
                    }
                   
                    Spacer()
                    
                }
                .padding(.top,8)
                
                HStack{
                    
                    Text("Jake Sully and Ney'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora.")
                        .foregroundColor(Color.white)
                        .opacity(0.5)
                        .font(.system(size: 15))
                        .lineSpacing(2)
                        .padding(.top)
                    Spacer()
                }
               
                HStack{
                    HStack{
                        Button{
                            castShow = true
                        }
                    label:{
                        Text("Cast")
                            .foregroundColor(Color.white)
                            .padding(.top)
                            .font(.system(size: 15))
                            .opacity(castShow ? 1.0 : 0.6)
                    }
                        Button{
                            castShow = false
                        }
                    label:{
                        Text("Directors & crew")
                            .foregroundColor(Color.white)
                            .padding(.top)
                            .opacity(castShow ?0.6 : 1.0)
                            .padding(.leading)
                            .font(.system(size: 15))
                    }
                        Spacer()
                        
                    }
                    HStack{
                        Text("See all")
                            .foregroundColor(Color(hex: "3D8CD3"))
                            .padding(.top)
                            .font(.system(size: 15))
                       
                    }
                  
                }
                .padding(.leading,1)
                Spacer()
               
                HStack{
                    if (castShow == true){
                        VStack{
                            
                            
                        }
                        .frame(width: 42,height: 3)
                        .background(Color(hex: "3D8CD3"))
                        .cornerRadius(10)
                    }
                    else {
                        VStack{
                            
                            
                        }
                        .frame(width: 100,height: 3)
                        .background(Color(hex: "3D8CD3"))
                        .cornerRadius(10)
                        .padding(.leading,60)

                    }
                    
                    
                    Spacer()
                   
                    
                }
                .padding(.top,-3)
                
                
                
                
              
                ScrollView(.horizontal,showsIndicators: false){
                    if (castShow==true){
                        HStack{
                            CardView(img:"sam2", Fname: "Sam Worthington", Sname:"jake sully")
                            CardView(img:"zoe", Fname: "Zoe saldana", Sname:"Naytiri")
                            CardView(img:"weaver", Fname: "Sigourney Weaver", Sname:"Kiri")
                            CardView(img:"kate", Fname: "Kate Winslet", Sname:"Ronal")
                            CardView(img:"lang", Fname: "Stefen Lang", Sname:"Miles Quaritch")
                            CardView(img:"cliff", Fname: "Cliff Curtis", Sname:"Tonowari")
                            
                            Spacer()
                        }
                        .padding(.top,5)
                    }
                    else{
                        HStack{
                            CardView(img:"zoe", Fname: "Sam Worthington", Sname:"jake sully")
                            CardView(img:"weaver", Fname: "Zoe saldana", Sname:"Naytiri")
                            CardView(img:"sam2", Fname: "Sigourney Weaver", Sname:"Kiri")
                            CardView(img:"cliff", Fname: "Kate Winslet", Sname:"Ronal")
                            CardView(img:"kate", Fname: "Stefen Lang", Sname:"Miles Quaritch")
                            CardView(img:"lang", Fname: "Cliff Curtis", Sname:"Tonowari")
                            
                        }
                        .padding(.top,5)
                    }
                }
                
                Spacer()
            }
            .padding(20)
            .frame( height: 580)
            .frame(maxWidth: .infinity)
            .background(Color(hex: "1A1A1A"))
            .cornerRadius(20)
            .padding(.bottom,-100)
          
          
           
            Spacer()
        }
        .background(Color.black)
        
    }
    
}
struct ChoiceView : View{
    var body: some View{
        HStack{
            
        }
    }
}

struct CardView : View{
    @State var img : String = ""
    @State var Fname : String = ""
    @State var Sname : String = ""
    
    
    
    var body: some View{
        VStack{
            
                HStack{
                    HStack{
                        VStack(spacing: 3){
                            HStack{
                                
                            }
                            .frame(width: 85,height: 85)
                            .background( Image("\(img)")
                                .resizable()
                                .scaledToFill())
                            .cornerRadius(20)
                            .padding(.top,6)
                           
                            
                            
                            
                            VStack(spacing: 3){
                                Text ("\(Fname)")
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                                    .font(.system(size: 14))
                                    .frame(width: 85)
                                    .padding(.leading,1)
                                
                                Text("\(Sname)")
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                                    .font(.system(size: 13))
                                    .opacity(0.7)
                                    .padding(.leading,-30)
                                Spacer()
                            }
                      
                            
                            
                            
                        }
                      
                       
                    }
                }
            
         
            
        }

    }
}

struct DetailView_Previews: PreviewProvider {

    static var previews: some View {
        DetailView()
    }
}



