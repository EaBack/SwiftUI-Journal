//
//  journalEntrryView.swift
//  SwiftUI-Journal
//
//  Created by Edgar Backer on 2023-04-11.
//

import SwiftUI

struct JournalEntrryView: View {
    @State var content : String = " "
    
    var body: some View {
        
        TextEditor(text: $content)
    }
}

struct journalEntrryView_Previews: PreviewProvider {
    static var previews: some View {
        JournalEntrryView()
    }
}
