
import SwiftUI

struct FDmView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = FDmGuitarViewModel()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("F(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play3()
                    }
                
                Image("Gm(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play4()
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Dm(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play1()
                    }
                Image("Am(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play5()
                    }
                
            }
            HStack(spacing: 70){
                
                Image("Hb(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play6()
                    }
                Image("C(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play7()
                    }
                
            }
            HStack(spacing: 70){
                
                Image("A(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play2()
                    }
                Image("G(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play8()
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
