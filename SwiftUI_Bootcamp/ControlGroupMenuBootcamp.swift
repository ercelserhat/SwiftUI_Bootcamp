//
//  ControlGroupMenuBootcamp.swift
//  SwiftUI_Bootcamp
//
//  Created by Serhat Erçel on 2.04.2024.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu"){
            ControlGroup("One"){
                Button("Uno"){
                    
                }
                Button("Dos"){
                    
                }
                Menu("How are you?"){
                    Button("Good"){
                        
                    }
                    Button("Bad"){
                        
                    }
                }
            }
            Button("Two"){
                
            }
            Menu("Three"){
                Button("Hi"){
                    
                }
                Button("Hello"){
                    
                }
                Menu("How are you?"){
                    Button("Good"){
                        
                    }
                    Button("Bad"){
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
