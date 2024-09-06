
import SwiftUI

struct FunnyDrumsView: View {
    @ObservedObject var viewModel = DrumsViewModel()
    @State private var isShowset = false
    @State private var isShowTrue = false
    var body: some View {
        VStack {
            HStack{
                VStack{
                    Image("H-H").onLongPressGesture(minimumDuration: 0) {
                        print("4")
                        self.viewModel.play4()
                    }
                    
                    Image("CLOSED").onLongPressGesture(minimumDuration: 0) {
                        print("3")
                        self.viewModel.play3()
                    }.offset(x: -10)
                    
                    Image("SNARE").onLongPressGesture (minimumDuration: 0){
                        print("2")
                        self.viewModel.play2()
                    }
                    .offset(x: -12, y: 0 )
                }.offset(x: 17,y: -90)
                VStack{
                    Image("Big").onLongPressGesture(minimumDuration: 0) {
                        print("5")
                        self.viewModel.play5()
                    }.offset(y: 7)
                    
                    
                    Image("Kick").onLongPressGesture(minimumDuration: 0) {
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
                            isShowTrue.toggle()
                        } label: {
                            Image("box")
                        }.offset(x: 10)
                            .fullScreenCover(isPresented: $isShowTrue, content: {
                                DrumsTrueView()
                            })
*/
                        Button {
                            isShowTrue.toggle()
                        } label: {
                            Image("DrumsBG")
                        }
                        .fullScreenCover(isPresented: $isShowTrue, content: {
                            DrumsTrueView()
                        })
                        
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
        FunnyDrumsView()
    }

