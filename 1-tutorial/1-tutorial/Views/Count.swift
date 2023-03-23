import SwiftUI

class CounterModel: ObservableObject {
    @Published var count = 0
}

struct CounterView: View {
    @State var stateCount = 0

    var body: some View {
        VStack{
            Text("\(stateCount)")
            Button("Increment stateCount") {
                stateCount += 1
            }
            
            Counter(stateCount: stateCount)
        }
    }
}

struct Counter: View {
    @StateObject var counterModel = CounterModel()
    let stateCount: Int
    
    var body: some View {
        VStack {
            Text("stateCount: \(stateCount)")
            Text("counterCount: \(counterModel.count)")
            Button("Increment counterCount") {
                counterModel.count += 1
            }
        }
    }
}

struct Count_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
