//
//  ContentView.swift
//  SwiftUI-Journal
//
//  Created by Edgar Backer on 2023-04-11.
//

import SwiftUI

struct ContentView: View {
    
    var journal = JournalViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack {
                List(){
                    ForEach(journal.entries){ entry in
                        NavigationLink(destination: JournalEntrryView()){
                            RowView(entry: entry)
                            
                        }
                    }
                }
            }
            .navigationTitle("Journal")
            .navigationBarItems(trailing: NavigationLink(destination: JournalEntrryView()){
                Image(systemName: "plus.circle")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    let entry : JournalEntry
    
    var body: some View {
        HStack{
            Text(entry.date)
            Spacer()
            Text(entry.content.prefix(7)+"...")
        }
    }
}
