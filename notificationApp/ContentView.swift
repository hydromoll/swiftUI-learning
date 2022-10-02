//
//  ContentView.swift
//  notificationApp
//
//  Created by hydromoll on 19.08.2022.
//

import SwiftUI

struct MusicRow: View {
    var name:String
    var body: some View{
        Text("Music: \(name)")
    }
}

struct Restaraunt: Identifiable{
    var id = UUID()
    var name:String
}
struct RestarauntRow:View{
    var restauraunt:Restaraunt
    var body: some View{
        Text("Come and eat at \(restauraunt.name)")
    }
}

struct ContentView: View {
//    let colors = ["black", "white", "red", "green", "blue"]
//    @State private var selectedColor = 0
//    @State private var showDetail = false
//    @State private var name =  ""
//    @State private var celcius:Double = 0
//    @State private var age = 18
   
    
    var body: some View {
        let first = Restaraunt(name: "First rest")
        let second = Restaraunt(name: "Second rest")
        let third = Restaraunt(name: "Third rest")
        let restaurants = [first, second, third]
        
        return List(restaurants){
            restaurant in RestarauntRow(restauraunt: restaurant)
        }
//        List{
//            MusicRow(name:"Rock")
//            MusicRow(name:"Rap")
//            MusicRow(name:"Classical")
//        }
//        Text("Tap me")
//            .onTapGesture {
//                print("Tapped")
//            }
//        VStack {
//            Image(systemName: "sum")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .gesture(DragGesture(minimumDistance: 50).onEnded{
//                    _ in print("drag")
//                })
////                .gesture(LongPressGesture(minimumDuration: 1.4).onEnded {
////                    _ in print("pressed")
////                })
////                .onTapGesture(count: 2) {
////                    print("You tapped twice")
////                }
//            Spacer()
//            Text("Sum")
//        }

//
//        VStack{
        ////            Text("Hello world")
//            Stepper("Enter your age", onIncrement: {
//                self.age += 1
//                print("Adding age")
//            }, onDecrement: {
//                self.age -= 1
//                print("Removing age")
//            })
//            Text("Your age is \(age)")
//        }

//        VStack {
//            Picker(selection: $selectedColor, label: Text("Choose a color")) {
//                ForEach(0 ..< colors.count) {
//                    Text(self.colors[$0])
//                }
//            }.pickerStyle(WheelPickerStyle())
//            Text("Your selected \(colors[selectedColor])")
//        }

//        VStack{
//            Slider(value: $celcius, in:-100...100)
//            Text("\(celcius) Celcius is \(celcius * 9 / 5 + 32  ) Fr")
//        }

//        VStack{
//            TextField("Hello", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
//            Text("Hello \(name)")
//        }

//        VStack {
//            Button(action: { self.showDetail.toggle() }) {
//                Text("Show detail")
//            }.padding().background(Color.green).clipShape(RoundedRectangle(cornerRadius: 20))
//            if showDetail {
//                Text("Detail...")
//                    .font(.largeTitle)
//            }
//        }
        //    @State private var showHello = true
        //    var body: some View {
        //        VStack{
        //            Toggle(isOn: $showHello, label: {Text("Show hello")})
        //            if showHello {
        //                Text("Hello")
        //            }
        //        }.padding()

//        let colors = Gradient(colors: [.red, .yellow, .green])

//        let gradient = AngularGradient(gradient: colors, center: .center)

//        return Circle().strokeBorder(gradient, lineWidth: 50)
//        Text("Hello, world!!!")
//            .font(.largeTitle)
//            .padding()
//            .foregroundColor(.white)
//            .background(LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .leading, endPoint: .trailing))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
