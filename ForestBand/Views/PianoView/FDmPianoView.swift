
import SwiftUI

struct FDmPianoView: View {
    @State private var isShowSelectView = false
    @State private var isShowset = false
    @ObservedObject var viewModel = ViewModelAll()
    var body: some View {
        VStack(spacing: 3){
            
            HStack(spacing: 70){
                
                
                Image("F(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Fpiano")
                    }
                
                Image("Gm(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "GmPiano")
                        
                        
                    }
            }
            
            
            HStack(spacing: 70){
                
                Image("Dm(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "DmPiano")
                    }
                Image("Am(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "AmPiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("Hb(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Hbpiano")
                    }
                Image("C(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Cpiano")
                    }
                
            }
            HStack(spacing: 70){
                
                Image("A(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Apiano")
                    }
                Image("G(F-Dm)")
                    .onLongPressGesture(minimumDuration: 0) {
                        self.viewModel.play(name: "Gpiano")
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
                        Text("Piano accords").foregroundStyle(Color.white)
                        Text("F - Dm").foregroundStyle(Color.white).font(.largeTitle)
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
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color.black).shadow(radius: 5).cornerRadius(60)
                   .padding()
                   .onTapGesture {
                       self.viewModel.stop()
                   }
        }
        
        
    }
}

#Preview {
    FDmPianoView()
}




