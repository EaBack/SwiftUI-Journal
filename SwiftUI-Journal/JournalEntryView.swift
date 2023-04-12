//
//  journalEntryView.swift
//  SwiftUI-Journal
//
//  Created by Edgar Backer on 2023-04-11.
//

import SwiftUI

struct JournalEntryView: View {
    
    @EnvironmentObject var journal : JournalViewModel
    var entry : JournalEntry? = nil
    
    @State var content : String = "Idag ... "
    
    @Environment(\.presentationMode)  var presentationMode
    
    var body: some View {
        VStack{
            TextEditor(text: $content)
                .onTapGesture {
                    clearText()
                }
        }
        .onAppear(){
            setContent()
        }
        .navigationBarItems(trailing: Button("Save"){
            saveEntry()
            presentationMode.wrappedValue.dismiss()
        })
    }
    
    private func clearText(){
        if entry == nil {
            content = ""
        }
    }
    
    private func setContent(){
        if let entry = entry {// nillcheck entry
            content = entry.content
        }
        
    }
    
    private func saveEntry(){
        if let entry = entry {
            // uppdatera gammal anteckning
            journal.update(entry: entry, with: content)
        }else {
            //skapa en ny anteckning
            let newEntry = JournalEntry(content: content)
            journal.entries.append(newEntry)
        }
        
       
        
        
        
        }
    
}

//struct journalEntryView_Previews: PreviewProvider {
//    static var previews: some View {
//        JournalEntryView()
//    }
//}
