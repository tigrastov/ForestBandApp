

import SwiftUI

struct GEmView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("G(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "G")
                    }
                
                Image("Am(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Am")
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Em(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Em")
                    }
                Image("D(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "D")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("Hm(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Hm")
                    }
                Image("C(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "C")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("H(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "H")
                    }
                Image("A(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "A")
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
                        Text("Guitar accords").foregroundStyle(Color.white)
                        Text("G - Em").foregroundStyle(Color.white).font(.largeTitle)
                    }
                }

                .fullScreenCover(isPresented: $isShowSelectView){
                    SelectKeyForGuitar()
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
    GEmView()
}



