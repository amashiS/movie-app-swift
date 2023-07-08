//
//  HomeView.swift
//  Movie App
//
//  Created by Amashi Silva on 2023-07-07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
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
            }
            .background(
                Image("ashiapMv")
                    .resizable()
                    .frame(height: 200)
                    .blur(radius: 60)
                    
                
                    
            )
                
                DotView()
                
            
            
            
            HStack{
                Text("Latest movies")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.system(size: 18))
                    .opacity(0.76)
                   
                
                Spacer()
                
                HStack{
                    Text("See all")
                        .foregroundColor(Color(hex: "0285FE"))
                    
                        .font(.system(size: 15))
                }

                    
            }
            .padding(.top,16)
            
            ScrollView(.horizontal , showsIndicators: false){
                HStack(spacing: 11){
                    
                    Latetst(movieName:"Avatar : The Way Of Water", movieImg: "avatar")
                    Latetst(movieName:"Glass Onion : A Knives Out Mistery", movieImg: "glassOnion")
                    Latetst(movieName:"The School for Good And Evil: Fantacy", movieImg: "schoolFor")
                    Latetst(movieName:"Cocain bear : Horror/ Commedy", movieImg: "cocainBear")
                    Latetst(movieName:"Extraction2  : Action / Thriller", movieImg: "extraction2")
                    Latetst(movieName:"Spider Man  : No Way Home", movieImg: "spiderMan")
                    Latetst(movieName:"The Woman King : Action / Drama", movieImg: "theWoman")
                    
                    
                }
            }
            
            HStack{
                Text("Top rated")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.system(size: 18))
                    .opacity(0.76)
                   
                
                Spacer()
                
                HStack{
                    Text("See all")
                        .foregroundColor(Color(hex: "0285FE"))
                    
                        .font(.system(size: 15))
                }

                    
            }
            .padding(.top,15)
           
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing:10){
                    
                    Top(topName: "The Witcher: Blood Origin",topName2: "On Going • Thriller",topImg:"witch2")
                    Top(topName: "Siccin",topName2: "On Going • Horror",topImg:"siccin")
                    Top(topName: "Snow White",topName2: "On Going • Fantacy/Adventure",topImg:"snowWhite")
                    Top(topName: "Tomb Raider",topName2: "On Going • Action",topImg:"tomb")
                    Top(topName: "Hobbit 3",topName2: "On Going • Adventure" ,topImg:"hobbit")
                    
                    
                    
                }
            }
           

          

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
struct Top :View{
    @State var topName : String=""
    @State var topName2 : String=""
    @State var topImg : String=""
    
    
    
    var body: some View{
        HStack{
            VStack{
                
              
                Button {
                    print("Image tapped!")
                } label: {
                    Text("Series")
                        .foregroundColor(Color(hex: "117FC9"))
                        .font(.system(size: 10))
                        .fontWeight(.bold)
                        .padding(.horizontal,4)
                        .padding(.vertical,3)
                        .background(Color(hex: "D4E5ED"))
                        .cornerRadius(60)
                        .padding(.leading,150)
                        .padding(.top,12)
                }
                Spacer()
                HStack{
                    VStack(alignment:.leading){
                        Text("\(topName)")
                            .foregroundColor(Color.white)
                            .font(.system(size:16))
                            .fontWeight(.bold)
                        
                        Text("\(topName2)")
                            .foregroundColor(Color.white)
                            .font(.system(size:16))
                            .opacity(0.5)
                        
                        
                    }
                    .padding(3)
                }
               
                        
                        
                        
                
            }
            
            
                
            
            
            
            
        }
        .frame(width: 225, height: 130)
        .background(Image("\(topImg)")
            .resizable()
            .frame(height: 130)
            .cornerRadius(20)
            
           
            
        )
        .padding(.vertical,4)
        
        
    }
}

struct Latetst : View{
    
   @State var movieName : String = ""
    @State var movieImg : String = ""
    
    var body: some View{
        VStack{
            
            HStack(alignment:.top){
                Spacer()
                VStack{
                  
                    Button {
                        print("Image tapped!")
                    } label: {
                        Text("Movie")
                            .foregroundColor(Color(hex: "117FC9"))
                            .font(.system(size: 10))
                            .fontWeight(.bold)
                            .padding(.horizontal,4)
                            .padding(.vertical,3)
                            .background(Color(hex: "D4E5ED"))
                            .cornerRadius(60)
                            .padding(.trailing,8)
                            .padding(.top,12)
                    }
                    Spacer()
                }
                
                
            }
            .frame(width: 106,height: 150)
            .background(
                Image("\(movieImg)")
                    .resizable()
                    .scaledToFill())
            .cornerRadius(20)
            
            HStack{
                Text("\(movieName)")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.system(size: 15))
                    .lineLimit(2)
                    .frame(width: 100,height: 40)
                Spacer()
            }
            
            HStack{
                Text("3h 12m")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.system(size: 13))
                    .lineLimit(2)
                    .opacity(0.5)
                    .padding(.top,-5)
                Spacer()
            }
            
            
                
                
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
