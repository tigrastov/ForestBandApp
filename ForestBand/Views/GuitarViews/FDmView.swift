
import SwiftUI

struct FDmView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("F(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "F")
                    }
                
                Image("Gm(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Gm")
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Dm(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Dm")
                    }
                Image("Am(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Am")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("Hb(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Hb")
                    }
                Image("C(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "C")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("A(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "A")
                    }
                Image("G(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "G")
                    }
                
                
            }
            
            
        }
        
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
            .background(Image("F - DmBg").resizable().scaledToFill().ignoresSafeArea())
           .overlay(alignment: .bottom) {
            HStack{
                
                /*
                Button {
                    print("key")
                    isShowSelectView.toggle()
                } label: {
                    Image("GuitLitle")
                }
                
                */
                
                Button {
                    isShowSelectView.toggle()
                } label: {
                    VStack{
                        Text("Guitar accords").foregroundStyle(Color.white)
                        Text("F - Dm").foregroundStyle(Color.white).font(.largeTitle)
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
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color.black).shadow(radius: 5).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
        
        
    }
}

#Preview {
    FDmView()
}



