//
//  ContentView.swift
//  My Apple Music
//
//  Created by Danilo Cotarella on 14/11/22.
//

import SwiftUI
import UIKit


struct ContentView: View {
    
    
    @State var modalOn: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView (.vertical) {
                
                VStack {
                    /* Image(systemName: "")
                     .imageScale(.large)
                     .foregroundColor(.accentColor) */
                    HStack {
                        Text("Ascolta Ora")
                     //       .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                        // .padding(.trailing, 150)
                        // .padding(.top, 20)
                        Spacer ()
                        Button {
                            modalOn = true
                        } label: {
                            Image ("account icon")
                                .font(.system(size: 25))
                        }
                        .sheet(isPresented: $modalOn ) {
                            AccountList(modalOn: $modalOn)
                           
                            
                        }

                       
                    }
                }
                .padding(30)
                //   Spacer()
                VStack {
                    Text ("In primo piano")
                        .fontWeight(.semibold)
                        .padding(.trailing , 160)
                        .font(.system(size:25))
                    
                    /*     Text ("Per te")
                     .padding(.trailing , 250)
                     .foregroundColor(.gray) */
                    
                    //    Spacer ()
                    
                }
                ScrollView (.horizontal) {
                    
                    HStack(spacing: -130)  {
                        
                        VStack{
                            
                            Text ("Per te")
                                .padding(.trailing , 250)
                                .foregroundColor(.gray)
                            
                            // .position(x: 137 , y: 137)
                            
                            Image ("stazione radio")
                                .cornerRadius(30)
                                .scaleEffect(0.65)
                                .position(x: 160 , y:170)
                            
                            
                            // dubbia esistenza .fixedSize()
                            //     .padding(.trailing , -200)
                        }
                        
                        
                        VStack {
                            Text ("Novità")
                                .padding(.trailing , 250)
                                .foregroundColor(.gray)
                            
                            
                            
                            Image ("Mix")
                                .cornerRadius(30)
                                .scaleEffect(0.65)
                                .position(x: 160 , y:170)
                            //dubbia esistenza .fixedSize()
                            
                        }
                    }
                }
                
                Spacer ()
                
                
                
                //    VStack {
                Text ("Ascoltati di recente")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .padding(.trailing , 100)
                //   .padding(.bottom , 100)
                    .position(x: 190 , y: -160)
                //        }
                
                
                
                
                
                
                ScrollView (.horizontal) {
                    
                    HStack  (spacing: -75) {
                        
                        VStack {
                            
                            Image ("fenomeno")
                                .scaleEffect(0.7)
                            
                                .padding(.bottom , -40)
                            
                            Text ("Fenomeno")
                                .fontWeight(.semibold)
                            Text ("Fabri Fibra")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                            
                        }
                        
                        VStack {
                            
                            Image ("bad habit")
                                .scaleEffect(0.7)
                            
                                .padding(.bottom , -40)
                            
                            Text ("Bad Habit")
                                .fontWeight(.semibold)
                            Text ("Steve Lacy")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Image ("demarco")
                                .scaleEffect(0.7)
                            
                                .padding(.bottom , -40)
                            
                            Text ("No Other Heart")
                                .fontWeight(.semibold)
                            Text ("Mac De Marco")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    
                    
                    
                }
                
                .position(x: 100 , y: -60)
                .padding(.leading , 60)
                
                
                
                
                
                
                
                
            }
        }
           }
       
        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

