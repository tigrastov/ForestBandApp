

import SwiftUI

struct CAmView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            
            
            HStack(spacing: 70){
                
                
                Image("C")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "C")
                    }
                
                Image("Dm")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Dm")
                        
                        
                    }
            }
            
            HStack(spacing: 70){
                
                Image("Am")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Am")
                    }
                Image("Em")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "Em")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("F")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "F")
                    }
                Image("G")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "G")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("E")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "E")
                    }
                Image("D")
                    .onLongPressGesture(minimumDuration: 0) {
                        viewModel.play(name: "D")
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
                        Text("Guitar accords").foregroundStyle(Color.white)
                            
                        Text("C - Am").foregroundStyle(Color.white).font(.largeTitle)
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
    CAmView()
}

