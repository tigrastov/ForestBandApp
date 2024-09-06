

import SwiftUI

struct GEmView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = GEmGuitarViewModel()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("G(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play1()
                    }
                
                Image("Am(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play2()
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Em(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play6()
                    }
                Image("D(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play5()
                    }
                
            }
            HStack(spacing: 70){
                
                Image("Hm(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play3()
                    }
                Image("C(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play4()
                    }
                
            }
            HStack(spacing: 70){
                
                Image("H(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play7()
                    }
                Image("A(G-Em)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play8()
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
