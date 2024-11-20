import SwiftUI

struct ContentView: View {
    
    @State var goToAuthView: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                if goToAuthView {
                    AuthView().transition(.move(edge: .trailing))
                } else {
                    HelloView(goToAuthView: $goToAuthView).transition(.move(edge: .leading ))
                }
            }
        }.animation(.easeInOut(duration: 0.5 ), value: goToAuthView).navigationTitle("").navigationBarHidden(true)
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct HelloView: View {
    @Binding var goToAuthView: Bool
     
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            SwiftUIView()
                .padding(.top, -40)
            VStack(alignment: .center, spacing: 10) {
                Text("Добро пожаловать!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)

                Text("Mirus app - приложения для роботы со списком дел")
                    .font(.subheadline)
                    .padding(.horizontal, 30)
                     .multilineTextAlignment(.center)
            }
            Spacer()
            Button(action: {
                withAnimation{
                    goToAuthView = true
                }
            }) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(height: 60)
                    .overlay {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
            }.offset(y: -20)
        }
        .padding()
    }
}

struct AuthView: View {
        var body: some View {
        VStack(spacing: 20) {
            Spacer()
            LogCircleImage ()
                .padding(.top, -40)
            VStack(alignment: .center, spacing: 10) {
                Text("Авторизация ")
                    .font(.largeTitle)
                    .foregroundColor(.blue)

                Text("Для дальнешней работы со списком дел необходимо авторизоваться с помощью номера телефона")
                    .font(.subheadline)
                    .padding(.horizontal, 30)
                    .multilineTextAlignment(.center)  
            }
            Spacer()
            Button(action: {
                
            }) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(height: 60)
                    .overlay {
                        Text("Войти")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
            }.offset(y: -20)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView ()
    }
}

