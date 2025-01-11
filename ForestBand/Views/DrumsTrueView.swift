/*
import SwiftUI

struct DrumsTrueView: View {
    @ObservedObject var viewModel = DrumsViewModel()
    @State private var isShowset = false
    @State private var isShowFunny = false
    var body: some View {
        VStack {
            HStack{
                VStack{
                    Image("HHOP").onLongPressGesture(minimumDuration: 0) {
                        print("4")
                        self.viewModel.play4()
                    }
                    
                    Image("HHCL").onLongPressGesture(minimumDuration: 0) {
                        print("3")
                        self.viewModel.play3()
                    }
                    
                    Image("SNAREtrue").onLongPressGesture (minimumDuration: 0){
                        print("2")
                        self.viewModel.play2()
                    }
                    .offset(x: -5, y: 0 )
                }.offset(x: 17,y: -90)
                VStack{
                    Image("CRASH").onLongPressGesture(minimumDuration: 0) {
                        print("5")
                        self.viewModel.play5()
                    }.offset(y: -5
                    )
                    
                    
                    Image("KICK").onLongPressGesture(minimumDuration: 0) {
                        print("1")
                        self.viewModel.play1()
                    }
                    
                    
                }.offset(x: -15,y: -40)
            } .frame(width: screen.width, height: screen.height)
                .background(Image("bgDrums").resizable().scaledToFill().ignoresSafeArea()).onTapGesture {
                    self.viewModel.stop()
                }
            
            
                .overlay(alignment: .bottom) {
                    HStack{
                        /*
                        Button {
                            isShowFunny.toggle()
                        } label: {
                            Image("funnyDrums")
                        }.offset(x: 25)
                        .fullScreenCover(isPresented:
                            $isShowFunny){
                          FunnyDrumsView()
                        }
*/
                        Button {
                            isShowFunny.toggle()
                        } label: {
                            Image("DrumsBG")
                        }
                        .fullScreenCover(isPresented:
                            $isShowFunny){
                          FunnyDrumsView()
                        }
                       
                            
                        Button {
                            print("Settings")
                            isShowset.toggle()
                        } label: {
                            Image("settings")
                        }
                        .fullScreenCover(isPresented: $isShowset){
                            SelectInstrView()
                        }
                        
                    }
                    .frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("tabDraums")).shadow(radius: 5).cornerRadius(60)
                    .padding()
                    .onTapGesture {
                        self.viewModel.stop()
                    }
                }
        }
    }
}
    #Preview {
        DrumsTrueView()
    }


*/



import SwiftUI

struct DrumsTrueView: View {
    @ObservedObject var viewModel = DrumsViewModelNew()
    @State private var isShowset = false
    @State private var isShowFunny = false

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image("HHOP").onLongPressGesture(minimumDuration: 0) {
                        print("4")
                        self.viewModel.play(name: "H-HOpen(drums)")
                    }
                    
                    Image("HHCL").onLongPressGesture(minimumDuration: 0) {
                        print("3")
                        self.viewModel.play(name: "H-H(drums)")
                    }
                    
                    Image("SNAREtrue").onLongPressGesture(minimumDuration: 0) {
                        print("2")
                        self.viewModel.play(name: "Snare(drums)")
                    }
                    .offset(x: -5, y: 0)
                }.offset(x: 17, y: -90)
                
                VStack {
                    Image("CRASH").onLongPressGesture(minimumDuration: 0) {
                        print("5")
                        self.viewModel.play(name: "Crash(drums)")
                    }.offset(y: -5)
                    
                    Image("KICK").onLongPressGesture(minimumDuration: 0) {
                        print("1")
                        self.viewModel.play(name: "Kick(drums)")
                    }
                }.offset(x: -15, y: -40)
            }
            .frame(width: screen.width, height: screen.height)
            .background(Image("bgDrums").resizable().scaledToFill().ignoresSafeArea())
            .onTapGesture {
                self.viewModel.stop()
            }
            .overlay(alignment: .bottom) {
                HStack {
                    Button {
                        isShowFunny.toggle()
                    } label: {
                        Image("DrumsBG")
                    }
                    .fullScreenCover(isPresented: $isShowFunny) {
                        FunnyDrumsView()
                    }
                    
                    Button {
                        print("Settings")
                        isShowset.toggle()
                    } label: {
                        Image("settings")
                    }
                    .fullScreenCover(isPresented: $isShowset) {
                        SelectInstrView()
                    }
                }
                .frame(width: screen.width * 0.95, height: screen.height / 7)
                .background(Color("tabDraums"))
                .shadow(radius: 5)
                .cornerRadius(60)
                .padding()
                .onTapGesture {
                    self.viewModel.stop()
                }
            }
        }
    }
}
