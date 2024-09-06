

import SwiftUI

struct BassView: View {
    @ObservedObject var viewModel = BassViewModel()
    @State private var isShowset = false
    var body: some View {
        VStack {
            
            HStack(spacing: 50){
                VStack{
                    
                    Image("ABass").onLongPressGesture(minimumDuration: 0) {
                        print("A")
                        self.viewModel.play1()
                    }
                    Image("AbBass").onLongPressGesture(minimumDuration: 0) {
                        print("Ab")
                        self.viewModel.play2()
                    }
                    Image("GBass").onLongPressGesture (minimumDuration: 0){
                        print("G")
                        self.viewModel.play3()
                    }
                    Image("F#Bass").onLongPressGesture(minimumDuration: 0) {
                        print("F#")
                        self.viewModel.play4()
                    }
                    Image("imageF").onLongPressGesture(minimumDuration: 0) {
                        print("F")
                        self.viewModel.play5()
                    }
                    Image("EBass").onLongPressGesture (minimumDuration: 0){
                        print("E")
                        self.viewModel.play6()
                    }
                }
                VStack{
                    Image("HbBass").onLongPressGesture(minimumDuration: 0) {
                        print("Hb")
                        self.viewModel.play7()
                    }
                    Image("HBass").onLongPressGesture(minimumDuration: 0) {
                        print("H")
                        self.viewModel.play8()
                    }
                    Image("imageC").onLongPressGesture (minimumDuration: 0){
                        print("C")
                        self.viewModel.play9()
                    }
                    Image("C#Bass").onLongPressGesture(minimumDuration: 0) {
                        print("C#")
                        self.viewModel.play10()
                    }
                    Image("DBass").onLongPressGesture(minimumDuration: 0) {
                        print("D")
                        self.viewModel.play11()
                    }
                    Image("EbBass").onLongPressGesture (minimumDuration: 0){
                        print("Eb")
                        self.viewModel.play12()
                    }
                }
            }
            
        }
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
        .background(Image("bgBass").resizable().scaledToFill().ignoresSafeArea())
        
        
        .overlay(alignment: .bottom) {
            HStack{
                Image("BassBass")
                Button {
                    print("Settings")
                    isShowset.toggle()
                } label: {
                    Image("settings")
                }
                .offset(x: 15
                )
                .fullScreenCover(isPresented: $isShowset){
                    SelectInstrView()
                }
                
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("")).shadow(radius: 5).cornerRadius(60)
                .padding()
                .onTapGesture {
                    self.viewModel.stop()
                }
        }
    }
}


#Preview {
    BassView()
}
