

import SwiftUI

struct CAmPiano: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            
            
            HStack(spacing: 70){
                
                
                Image("C")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Cpiano")
                    }
                
                Image("Dm")
                    .onLongPressGesture(minimumDuration: 0) {
                       viewModel.play(name: "DmPiano")
                        
                        
                    }
            }
            
            HStack(spacing: 70){
                
                Image("Am")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "AmPiano")
                    }
                Image("Em")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "EmPiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("F")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Fpiano")
                    }
                Image("G")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Gpiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("E")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Epiano")
                    }
                Image("D")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Dpiano")
                    }
            }
        }
        
        .offset(y: -40)
        
        .frame(width: screen.width, height: screen.height)
            .background(Image("C - AmBg").resizable().scaledToFill().ignoresSafeArea())
        
        
           .overlay(alignment: .bottom) {
            HStack{
                
                Button {
                    isShowSelectView.toggle()
                } label: {
                    VStack{
                        Text("Piano accords").foregroundStyle(Color.white)
                            
                        Text("C - Am").foregroundStyle(Color.white).font(.largeTitle)
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
                .fullScreenCover(isPresented: $isShowset) {
                    SelectInstrView()
                }.offset(x: 55)
                    
                
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("tabC-Am")).shadow(radius: 5).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
        
        
        
    }
}
#Preview {
    CAmPiano()
}


