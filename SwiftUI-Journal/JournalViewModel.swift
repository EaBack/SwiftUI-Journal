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
}
