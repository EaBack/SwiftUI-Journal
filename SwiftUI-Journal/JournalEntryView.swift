//
//  journalEntrryView.swift
//  SwiftUI-Journal
//
//  Created by Edgar Backer on 2023-04-11.
//

import SwiftUI

struct JournalEntryView: View {
    var entry : JournalEntry?
    @ObservedObject var journal : JournalViewModel
    
    
    @State var content : String = " "
    
    var body: some View {
        VStack{
            TextEditor(text: $content)
        }
        .onAppear(perform: setContent)
        .navigationBarItems(trailing: Button("Save"){
            saveEntry()
        })
    }
    
    private func setContent(){
        if let entry = entry {// nillcheck entry
            content = entry.content
        }
        
    }
    
    private func saveEntry(){
        
        let newEntry = JournalEntry(content: content)
        journal.entries.append(newEntry)
        
        
        
        }
    
}

struct journalEntrryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntrryView()
    }
}
