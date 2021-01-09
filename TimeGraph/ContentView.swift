//
//  ContentView.swift
//  TimeGraph
//
//  Created by Joseph Betts on 31/10/2020.
//  Copyright © 2020 Joseph Betts. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Defining Buttons (Primary Top Layer, Secondary Bottom Layer)
    @State var primaryBtn1 = false;
    @State var primaryBtn2 = false;
    @State var primaryBtn3 = false;
    @State var primaryBtn4 = false;
    @State var primaryBtn5 = false;
    @State var primaryBtn6 = false;
    @State var primaryBtn7 = false;
    @State var primaryBtn8 = false;
    @State var primaryBtn9 = false;
    @State var secondaryBtn1 = false;
    @State var secondaryBtn2 = false;
    @State var secondaryBtn3 = false;
    @State var secondaryBtn4 = false;
    @State var secondaryBtn5 = false;
    @State var secondaryBtn6 = false;
    @State var secondaryBtn7 = false;
    @State var secondaryBtn8 = false;
    @State var secondaryBtn9 = false;
    @State private var searchTerm = "";
    
    // Defining Cities Array (Available time zones for user to select)
    var cities = ["Mumbai, India", "Barcelona, Spain", "Berlin, Germany", "Washington DC, United States"];
    @State private var selectedCity = 0
    
    // The array of times for each selectable time zone
    var LondonTime = ["09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00"]
    var MumbaiTime = ["14:30", "15:30", "16:30", "17:30", "18:30", "19:30", "20:30", "21:30", "22:30"]
    var BarcelonaTime = ["10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00"]
    var BerlinTime = ["10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00"]
    var WashingtonTime = ["5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00"]

    var body: some View {
        
        VStack(alignment: .leading){
            
            // Title
            Text("TimeGraph")
                .font(.largeTitle)
            
            Spacer().frame(width: 100, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            // Primary Location (London)
            Text("Location: London, England")
                .font(.headline)
                .multilineTextAlignment(.leading)
            
                    // HStack For Primary Layer
                    HStack(spacing: 0){
                        
                        VStack{
                            Button(action: {
                                self.primaryBtn1.toggle();
                                self.secondaryBtn1.toggle();
                            }){
                                Text(LondonTime[0]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn1 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn2.toggle();
                             self.secondaryBtn2.toggle();
                            }) {
                                Text(LondonTime[1]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn2 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn3.toggle();
                             self.secondaryBtn3.toggle();
                            }) {
                                Text(LondonTime[2]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn3 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn4.toggle();
                             self.secondaryBtn4.toggle();
                            }) {
                                Text(LondonTime[3]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn4 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn5.toggle();
                                self.secondaryBtn5.toggle();
                            }) {
                                Text(LondonTime[4]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn5 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn6.toggle();
                                self.secondaryBtn6.toggle();
                            }) {
                                Text(LondonTime[5]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn6 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn7.toggle();
                                self.secondaryBtn7.toggle();
                            }) {
                                Text(LondonTime[6]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn7 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn8.toggle();
                                self.secondaryBtn8.toggle();
                            }) {
                                Text(LondonTime[7]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn8 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                             self.primaryBtn9.toggle();
                                self.secondaryBtn9.toggle();
                            }) {
                                Text(LondonTime[8]).frame(minWidth: 50)
                            }
                        }.background(self.primaryBtn9 ? Color.green : Color.blue)
                    }
            
            // Secondary Location (user chosen)
            Text("Location: \(cities[selectedCity])")
            .font(.headline)
            .multilineTextAlignment(.leading)
            
            
                    // Secondary Layer
                    HStack(alignment: .center, spacing: 0){
                        
                        VStack{
                            Button(action: {
                                self.primaryBtn1.toggle();
                                self.secondaryBtn1.toggle();
                            })
                                {
                                    if selectedCity == 0 {
                                        Text(MumbaiTime[0]).frame(minWidth: 50)
                                }
                                    if selectedCity == 1 {
                                        Text(BarcelonaTime[0]).frame(minWidth: 50)
                                    }
                                    if selectedCity == 2 {
                                        Text(BerlinTime[0]).frame(minWidth: 50)
                                    }
                                    if selectedCity == 3 {
                                        Text(WashingtonTime[0]).frame(minWidth: 50)
                                    }}
                            
                        }.background(self.primaryBtn1 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn2.toggle();
                             self.secondaryBtn2.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[1]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[1]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[1]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[1]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn2 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn3.toggle();
                             self.secondaryBtn3.toggle();
                            }) {
                                    if selectedCity == 0 {
                                        Text(MumbaiTime[2]).frame(minWidth: 50)
                                }
                                    if selectedCity == 1 {
                                        Text(BarcelonaTime[2]).frame(minWidth: 50)
                                    }
                                    if selectedCity == 2 {
                                        Text(BerlinTime[2]).frame(minWidth: 50)
                                    }
                                    if selectedCity == 3 {
                                        Text(WashingtonTime[2]).frame(minWidth: 50)
                                    }}
                        }.background(self.primaryBtn3 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn4.toggle();
                             self.secondaryBtn4.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[3]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[3]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[3]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[3]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn4 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn5.toggle();
                             self.secondaryBtn5.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[4]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[4]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[4]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[4]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn5 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn6.toggle();
                             self.secondaryBtn6.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[5]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[5]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[5]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[5]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn6 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn7.toggle();
                             self.secondaryBtn7.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[6]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[6]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[6]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[6]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn7 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn8.toggle();
                             self.secondaryBtn8.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[7]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[7]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[7]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[7]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn8 ? Color.green : Color.blue)
                        VStack{
                            Button(action: {
                                self.primaryBtn9.toggle();
                             self.secondaryBtn9.toggle();
                            }) {
                                if selectedCity == 0 {
                                    Text(MumbaiTime[8]).frame(minWidth: 50)
                            }
                                if selectedCity == 1 {
                                    Text(BarcelonaTime[8]).frame(minWidth: 50)
                                }
                                if selectedCity == 2 {
                                    Text(BerlinTime[8]).frame(minWidth: 50)
                                }
                                if selectedCity == 3 {
                                    Text(WashingtonTime[8]).frame(minWidth: 50)
                                }}
                        }.background(self.primaryBtn9 ? Color.green : Color.blue)
                    }
            
        
            // Buttons at footer layer
            HStack{
                
            // Copy to Clipboard Button
            Button(action: {
                //Index Arrays
                var primaryArray:[Int] = []
                let pasteboard = NSPasteboard.general
                var pastestring = ""
                pasteboard.declareTypes([NSPasteboard.PasteboardType.string], owner: nil)
                pastestring = pastestring + "London, England: \n";
        
                if self.primaryBtn1 == true {
                    primaryArray.append(0);
                }
                
                if self.primaryBtn2 == true {
                    primaryArray.append(1);
                }
                if self.primaryBtn3 == true {
                    primaryArray.append(2);
                }
                if self.primaryBtn4 == true {
                    primaryArray.append(3);
                }
                if self.primaryBtn5 == true {
                    primaryArray.append(4);
                }
                if self.primaryBtn6 == true {
                    primaryArray.append(5);
                }
                if self.primaryBtn7 == true {
                    primaryArray.append(6);
                }
                if self.primaryBtn8 == true {
                    primaryArray.append(7);
                }
                if self.primaryBtn9 == true {
                    primaryArray.append(8);
                }
                
                let minValue = primaryArray.min();
                let maxValue = primaryArray.max();
                
                pastestring = pastestring + self.LondonTime[minValue ?? 0] + " - " + self.LondonTime[maxValue ?? 0]
                pastestring = pastestring + "\n \n";
                
                pastestring = pastestring + "\(self.cities[self.selectedCity])";
                pastestring = pastestring + ": \n";
                
                if self.selectedCity == 0 {
                    pastestring = pastestring + self.MumbaiTime[minValue ?? 0] + " - " + self.MumbaiTime[maxValue ?? 0]
                }
                
                if self.selectedCity == 1 {
                    pastestring = pastestring + self.BarcelonaTime[minValue ?? 0] + " - " + self.BarcelonaTime[maxValue ?? 0]
                }
                
                if self.selectedCity == 2 {
                    pastestring = pastestring + self.BerlinTime[minValue ?? 0] + " - " + self.BerlinTime[maxValue ?? 0]
                }
                
                if self.selectedCity == 3 {
                    pastestring = pastestring + self.WashingtonTime[minValue ?? 0] + " - " + self.WashingtonTime[maxValue ?? 0]
                }
                
                    pasteboard.setString(pastestring, forType: NSPasteboard.PasteboardType.string)
                
            }){
                Text("Copy to Clipboard")
            }
            
            // Reset Button
            Button(action: {
                self.primaryBtn1 = false;
                self.primaryBtn2 = false;
                self.primaryBtn3 = false;
                self.primaryBtn4 = false;
                self.primaryBtn5 = false;
                self.primaryBtn6 = false;
                self.primaryBtn7 = false;
                self.primaryBtn8 = false;
                self.primaryBtn9 = false;
                self.secondaryBtn1 = false;
                self.secondaryBtn2 = false;
                self.secondaryBtn3 = false;
                self.secondaryBtn4 = false;
                self.secondaryBtn5 = false;
                self.secondaryBtn6 = false;
                self.secondaryBtn7 = false;
                self.secondaryBtn8 = false;
                self.secondaryBtn9 = false;
                
                }){
                    Text("Reset")
                }
                
                
                
                // Location Picker
                VStack{
                    Picker(selection: $selectedCity, label: Text("Location")){
                        ForEach(0 ..< cities.count) {
                            Text(self.cities[$0])
                        }
                    }.frame(width: 350)
                    //Text("You Selected: \(cities[selectedCity])")
                }
                
                //Quit Button
                Button(action: {
                    NSApplication.shared.terminate(self)
                }, label: {
                    Text("Quit")
                })
                
                
            }
            .padding([.top, .bottom], 5.0)


        }
        .padding(.all, 5.0)
        .frame(maxWidth: 620, maxHeight: 220)
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
