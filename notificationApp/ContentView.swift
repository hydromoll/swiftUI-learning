//
//  ContentView.swift
//  notificationApp
//
//  Created by hydromoll on 19.08.2022.
//

import SwiftUI

// struct MusicRow: View {
//    var name: String
//    var body: some View {
//        Text("Music: \(name)")
//    }
// }
//
// struct Restaraunt: Identifiable {
//    var id = UUID()
//    var name: String
// }
//
// struct RestarauntRow: View {
//    var restauraunt: Restaraunt
//    var body: some View {
//        Text("Come and eat at \(restauraunt.name)")
//    }
// }

struct ContentView: View {
//    let colors = ["black", "white", "red", "green", "blue"]
//    @State private var selectedColor = 0
//    @State private var showDetail = false
//    @State private var name =  ""
//    @State private var celcius:Double = 0
//    @State private var age = 18

//    @State private var users = ["Ian", "Maria", "Igor"]
//    @State private var colors = ["red", "green", "blue"]
//    @State private var selectedColor = 0
//    @State private var additionalSetting = false

//    @State private var showingAlert = false

//    @State private var countries = ["russia", "argentina", "uk", "usa", "sweden", "canada"].shuffled()
//    @State private var correctAnswer = Int.random(in: 0...2)
//    @State private var score = 0
//    @State private var showAlert = true

//    class User:ObservableObject {
//        @Published var firstName = "Vladislav"
//        @Published var lastName = "Avialine"
//    }

//    @ObservedObject var user = User()
    @ObservedObject var settings = UserSettingsObj() 
    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase")
            }
            //

//            Text("Your name is: \(user.firstName) \(user.lastName)")
//            TextField("FirstName", text: $user.firstName)
//            TextField("FirstName", text: $user.lastName)
        }

//        Text("Hello world!")

//        ZStack{
//            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
//
//            VStack(spacing:30) {
//                VStack{
//                    Text("Выберите флаг:")
//                        .foregroundColor(.white)
//                        .font(.headline)
//                    Text(countries[correctAnswer])
//                        .foregroundColor(.white)
//                        .font(.largeTitle)
//                        .fontWeight(.black)
//                }
//                ForEach(0..<3){number in
//                    Button(action:{
//                        //
//                    }){
//                        Image(self.countries[number])
//                            .frame(width: 250, height: 130)
//                            .clipShape(Capsule())
//                    }
//
//                }
//                Text("Общий счет: \(score)")
//                    .font(.largeTitle)
//            }
//
//        }.alert("Правильно",isPresented: $showAlert){
//            Text("Hello")
//        }

//        Button(action: {
//            self.showingAlert = true
//        }){
//            Text("Show alert")
//        }.confirmationDialog("Colors", isPresented: $showingAlert){
//            Button("Red"){
//            }
//        }

//                .alert("R u sure?",isPresented: $showingAlert){
//            Button("Cancel", role:.cancel){}.foregroundColor(.red).background(Color.red)
//            Button("Yes I'm", role:.destructive){}
//        }

//        Text("Hello world")
//        Button("Show alert"){
//            self.showingAlert = true
//        }.alert("Hello", isPresented: $showingAlert){
//            Button("Ok"){
//                //
//            }
//            Button("cancel", role: .cancel){
//                //
//            }
//        }
//        NavigationView {
//                Form {
//                    Section(header: Text("Colors")) {
//                    Picker(selection: $selectedColor, label: Text("Choose a color")) {
//                        ForEach(0 ..< colors.count) {
//                            Text(self.colors[$0])
//                        }
//                    }
//                }.pickerStyle(SegmentedPickerStyle())
//                Toggle(isOn: $additionalSetting) {
//                    Text("Доп настройки")
//                }
//                Button(action: {
        ////                    print("Changes saved")
//                }) {
//                    Text("Save changes")
//                }.disabled(!additionalSetting)
//            }.navigationTitle("Settings")
//        }

//        TabView{
//            Text("FirstView")
//                .tabItem{
//                    Image(systemName: "cloud")
//                    Text("Hello")
//                }
//            Text("SecondView")
//                .tabItem{
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//        }
//        NavigationView{
//            List{
//                ForEach(users, id: \.self){
//                    user in  Text(user)
//                }.onDelete{
//                    users.remove(atOffsets: $0)
//                }
//                .onMove{
//                    users.move(fromOffsets: $0, toOffset: $1)
//                }
//            }
//            .navigationTitle("Hello")
//            .toolbar{
//                EditButton()
//            }
//            Text("Hello world")
//                .navigationTitle("Hello")
//                .navigationBarTitleDisplayMode(.inline)
//                .toolbar {
//                        EditButton()
//                    }
//        }

//        let first = Restaraunt(name: "First rest")
//        let second = Restaraunt(name: "Second rest")
//        let third = Restaraunt(name: "Third rest")
//        let restaurants = [first, second, third]
//
//        return List(restaurants) {
//            restaurant in RestarauntRow(restauraunt: restaurant)
//        }
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
