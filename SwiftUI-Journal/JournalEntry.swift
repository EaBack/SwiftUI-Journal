//
//  JournalEntry.swift
//  SwiftUI-Journal
//
//  Created by Edgar Backer on 2023-04-11.
//

import Foundation

struct JournalEntry : Identifiable{//behöver ingen constructor men vi kann göra det
    var id = UUID()
    var content : String
    
    private var unformatedDate = Date()
    private let dateFormatter = DateFormatter()
    
    init(content: String, unformatedDate: Date = Date()) {
        self.content = content
        dateFormatter.dateStyle = .medium // flyttade från rad 22 till hit
    }
    
    var date : String {
        
        
        return dateFormatter.string(from: unformatedDate)
    }
}
