//
//  ContentView.swift
//  Memorize
//
//  Created by Josh Liu on 2024-04-20.
//

import SwiftUI

struct ContentView: View { //behaves like a View
//    // stored properties
//    var i: Int // variable I is Int type
//    var s: String //variable S is Str type
//    
    // computed properties
    //the value of this variable/property is computed (code insides runs everytime someone requests the property value
    var body: some View { //some = run this
        // Vstack is a way to combine views into 1 big thing
        VStack(content: {
            Image(systemName: "globe") // this is naming
            //Image is a struct (essentially instance of an Image type/class?)
            // add some modifiers below
                .imageScale(.large) // calling the imageScale function param may not necessarily be named, just positional
                .foregroundStyle(.tint) //calling the function foregoundstyle
            Text("hello there") // Text struct
        })
        // can chain addl modifiers - and they only affect the instances/classes that they're native/allowed to access. imageScale has no impact on Text structure
        .font(.largeTitle)
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding() // view modifier - chained to the above Vstack view with its modifications (imageScale, foreground)
    }
}


// struct = structure, pretty much everything is a struct
// can have variables or functions - similar to a class in OOP
    // but not OOP. just a structure that has variables + functions, no inheritance
// ContentView = a struct type called ContentView (default filled in because that's how xcode prepopulated
// : View -> this struct behaves like a "View" (is this typehinting?)
    // a view is a rectangular screen area that display something and events?
    // only requirement for a View is to have "var body" variable (type is "some View")
    // if this is fulfilled, then it gets all the functionality that View knows how to do

// so View class has a required var called "body" that must return something else - another View
    // VStack provides the required components (an Image instance and Text instance) to this View
    // creates something called a tuple View that contains the image and text
    // Vstack gets curly brace + a list of component views
        // limited capabilities for the things inside

// a View builder is what turns the list of views into a tuple view


#Preview {
    ContentView()
    //}
}
