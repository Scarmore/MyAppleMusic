//
//  AccountList.swift
//  My Apple Music
//
//  Created by Danilo Cotarella on 21/11/22.
//

import SwiftUI

struct AccountList: View {
    @Binding var modalOn: Bool
    @State   var accountList : [String] = ["Utilizza codice o carta regalo" , "Aggiungi credito dell'ID Apple" , "Gestisci Abbonamento" , "Passa all'abbonamento Famiglia"]
    var body: some View {
        VStack{
            HStack {
                Spacer ()
                Text ("Account")
                    .fontWeight(.semibold)
                    .padding()
                
                
                Spacer ()
                Button {
                    modalOn = false
                } label: {
                    Text("Fine")
                        .foregroundColor(.red)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                    
                }
                
                
            }
            Spacer()
            
            
            VStack {
            List {
                ForEach (accountList , id: \.self) { item in
                    Text(item)
                        .foregroundColor(.red)
                        
                }
            }
                
            
                Text ("Solo 6,00 € in più al mese per un massimo di 6 persone")
                    .foregroundColor(.gray)
                    .fontWeight(.light)
            }
            Spacer ()
        }
        
        }
    
    
}

