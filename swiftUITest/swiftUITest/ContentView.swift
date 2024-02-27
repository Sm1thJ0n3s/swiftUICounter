//
//  ContentView.swift
//  swiftUITest
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    var body: some View {
        VStack {
            Text("Click the buttons below to change the counter")
            
            Text(String(counter))
                .padding(20)
            
            HStack {
                // Increment button
                Button("Increment", action: increase)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                // Decrement button
                Button("Decrement", action: decrease)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
        }
        .padding()
    }
    // Increases the counter when the user clicks on the increment button
    func increase(){
        // Counter incrases
        counter += 1
        // Counter is then checked on
        limitCheck()
    }
    // Decreases the counter when the user clicks on the decrement button
    func decrease() {
        // Counter decreases
        counter -= 1
        // Counter is then check on
        limitCheck()
    }
    // Checks if the counter goes past 50 or below 0
    func limitCheck () {
        // Checks for passing maximum
        if counter > 50 {
            counter = 50
        // Checks for falling under minimum
        } else if counter < 0 {
            counter = 0
        }
    }
    
    
}

#Preview {
    ContentView()
}
