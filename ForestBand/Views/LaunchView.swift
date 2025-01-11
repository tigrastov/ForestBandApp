import SwiftUI
struct LaunchView: View {
    @Binding var isLoading: Bool
    @State private var rotation: Double = 0

    var body: some View {
        ZStack {
            
            Color(.cyan).ignoresSafeArea()  // Фон экрана загрузки
            
            Image("LaunchIcon")
                .rotation3DEffect(.degrees(rotation), axis: (x: 0, y: 1, z: 0))
                
                .onAppear {
                    // Анимация: вращение бесконечно
                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                        rotation = 360
                    }

                    // Переход к основному экрану через 3 секунды
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2 ) {
                        withAnimation {
                            isLoading = false
                        }
                    }
                }
        }
    }
}

