

import SwiftUI

struct GEmPianoVew: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("G(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Gpiano")
                    }
                
                Image("Am(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "AmPiano")
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Em(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "EmPiano")
                    }
                Image("D(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Dpiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("Hm(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "HmPiano")
                    }
                Image("C(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Cpiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("H(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Hpiano")
                    }
                Image("A(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Apiano")
                    }
                
                
            }
            
            
            
            
            
        }
        
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
            .background(Image("G - EmBg").resizable().scaledToFill().ignoresSafeArea())
           .overlay(alignment: .bottom) {
            HStack{
                
                Button {
                    isShowSelectView.toggle()
                } label: {
                    VStack{
                        Text("Piano accords").foregroundStyle(Color.white)
                        Text("G - Em").foregroundStyle(Color.white).font(.largeTitle)
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
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("TabE")).shadow(radius: 5).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
        
        
    }
}

#Preview {
    GEmPianoVew()
}




