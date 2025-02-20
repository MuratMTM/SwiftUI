
import SwiftUI

struct MlongPressGesture: View {
    @State var isSuccess: Bool = false
    var body: some View {
        VStack(spacing: 50){
            ZStack{
                
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.white)
                    .overlay {
                        Circle().stroke(Color.black, lineWidth: 6)
                        
                        if isSuccess{
                            Image("max")
                                .resizable()
                            
                                .frame(width: 180, height: 180)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }else {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle())
                                .tint(.blue)
                        }
                    }
            }
            
            
            Text(isSuccess ? "Max Verstappen": "")
                .font(.title)
                .foregroundColor(.orange)
                .bold()
            
            Text("Success")
                .frame(width: 200, height: 50)
                .font(.headline)
                .background(isSuccess ? Color.green : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(isSuccess ? 10 : 0)
            
                .onLongPressGesture(minimumDuration:2.0) {
                    
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isSuccess.toggle()
                    }
                    
                    
                    
                }
            Image(systemName: isSuccess ? "arrowshape.forward.fill": "crossmark")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(isSuccess ? Color.green : Color.red)
            
            
            
        }
    }
    
}

#Preview {
    MlongPressGesture()
}
