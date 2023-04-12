//
//  JournalViewModel.swift
//  SwiftUI-Journal
//
//  Created by Edgar Backer on 2023-04-11.
//

import Foundation

class JournalViewModel : ObservableObject {
    
    @Published var entries = [JournalEntry]()
    
    init(){
        addMockData()
    }
    
    func addMockData() {
    
        
        entries.append(JournalEntry(content: "jag åt"))
        entries.append (JournalEntry(content: "jag sov"))
        entries.append  (JournalEntry(content: "jag programmerade"))
    }
    
    func update(entry : JournalEntry, with content : String){
        if let index = entries.firstIndex(of: entry){//JournalEntry most be Equatable
            entries[index].content = content
        }
    }
}
