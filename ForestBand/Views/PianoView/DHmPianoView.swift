

import SwiftUI

struct DHmPianoView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("D(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Dpiano")
                    }
                
                Image("Em(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "EmPiano")
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Hm(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "HmPiano")
                    }
                Image("Fm#(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Fm#Piano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("G(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Gpiano")
                    }
                Image("A(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Apiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("F#(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "F#piano")
                    }
                Image("E(D-Hm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Epiano")
                    }
                
                
            }
            
            
            
            
            
        }
        
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
        .background(Image("D - HmBg").resizable().scaledToFill().ignoresSafeArea())
        .overlay(alignment: .bottom) {
            HStack{
                /*
                 Button {
                 print("key")
                 isShowSelectView.toggle()
                 } label: {
                 Image("GuitLitle")
                 }
                 .fullScreenCover(isPresented: $isShowSelectView){
                 SelectKeyForGuitar()
                 }
                 */
                
                Button {
                    isShowSelectView.toggle()
                } label: {
                    VStack{
                        Text("Piano accords").foregroundStyle(Color.white)
                        Text("D - Hm").foregroundStyle(Color.white).font(.largeTitle)
                    }
                }
                .fullScreenCover(isPresented: $isShowSelectView){
                    SelectKeyPiano()
                }
                
                
                
                Button(action: {
                    isShowset.toggle()
                }, label: {
                    Image("settings")
                })
                .fullScreenCover(isPresented: $isShowset, content: {
                    SelectInstrView()
                }).offset(x: 55)
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("E(D-Hm)")).shadow(radius: 5).cornerRadius(60)
                .padding()
                .onTapGesture {
                    self.viewModel.stop()
                }
        }
        
        
    }
}

#Preview {
    DHmPianoView()
}




