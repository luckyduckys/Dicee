import SwiftUI

struct DiceeView: View {
    @StateObject var diceViewModel = DiceViewModel()
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("DiceeLogo")
                Spacer()
                HStack {
                    Image(diceViewModel.leftDice.assetImage)
                        .padding(.trailing, 10)
                    Image(diceViewModel.rightDice.assetImage)
                        .padding(.leading, 10)
                }
                Spacer()
                Button(action: {
                    diceViewModel.rollDice()
                }) {
                    Text("Roll")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(red: 0.627, green: 0.09, blue: 0.102))
                }
                Spacer(minLength: 50)
            }
        }
    }
}

#Preview {
    DiceeView()
}
