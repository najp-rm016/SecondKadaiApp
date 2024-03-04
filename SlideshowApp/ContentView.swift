//画像の枚数分条件分岐を作る必要があり、汎用性が低い
//初期バージョン

import SwiftUI

struct ContentView: View {
    let bgColor = Color.init(red: 0.92, green: 0.93, blue: 0.94)
    let bgColor_invalid = Color.init(red: 0.7, green: 0.7, blue: 0.7)
    let grayColor = Color.init(white: 0.8, opacity: 1)
    var arrayImage = ["ladybug.fill", "ant.circle"]
    
    @State var count = 0
    @State var timer :Timer!
    
    @State private var flag = true
    @State var buttonTextFlag = false
    
    var body: some View {
        VStack{
            let imageCount = count % 3
            switch imageCount{
            case 0:
                //                if flag{
                Image(systemName: arrayImage[0])
                //親ビューのサイズに画像サイズを合わせる
                    .resizable()
                    .frame(width: 100, height: 100)
                //四方に１６pxの余白を作る
                    .padding()
                    .transition(.slide)
                //                }
            case 1, -1:
                //                if flag{
                Image(systemName: "ant.circle")
                //親ビューのサイズに画像サイズを合わせる
                    .resizable()
                    .frame(width: 100, height: 100)
                //四方に１６pxの余白を作る
                    .padding()
                    .transition(.slide)
                //                }
            case 2, -2:
                //                if flag{
                Image(systemName: "leaf.fill")
                //親ビューのサイズに画像サイズを合わせる
                    .resizable()
                    .frame(width: 100, height: 100)
                //四方に１６pxの余白を作る
                    .padding()
                    .transition(.slide)
                //                }
            case 3, -3:
                //                if flag{
                Image(systemName: "leaf.fill")
                //親ビューのサイズに画像サイズを合わせる
                    .resizable()
                    .frame(width: 100, height: 100)
                //四方に１６pxの余白を作る
                    .padding()
                    .transition(.slide)
                //                }
            default:
                Text("エラー")
            }
        }
        
        HStack {
            // whiteの影を使うため若干グレーがかった背景を使う
            //                    bgColor.ignoresSafeArea()
            Button(action: {
                if buttonTextFlag == false{
                    self.count += 1
                    //                print("count:\(count)")
                    //                print("imageCount:\(count % 3)")
                }
            }){
                if(buttonTextFlag){
                    Text("進む")
                        .font(.system(size: 25, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundStyle(bgColor_invalid)
                        )
                }
                else{
                    Text("進む")
                        .font(.system(size: 25, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundStyle(bgColor)
                            //                             上側の凸をshadowで表現
                                .shadow(color: .white, radius: 10, x: -7, y: -7)
                            // 下側の凸をshadowで表現
                                .shadow(color: grayColor, radius: 10, x: 7, y: 7)
                        )
                }
            }
            // whiteの影を使うため若干グレーがかった背景を使う
            //                    bgColor.ignoresSafeArea()
            Button(action: {
                if buttonTextFlag == false{
                    self.count -= 1
                    //                print("count:\(count)")
                    //                print("imageCount:\(count % 3)")
                }
            }){
                Text("戻る")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(bgColor)
                        // 上側の凸をshadowで表現
                            .shadow(color: .white, radius: 10, x: -7, y: -7)
                        // 下側の凸をshadowで表現
                            .shadow(color: grayColor, radius: 10, x: 7, y: 7)
                    )
            }
            // whiteの影を使うため若干グレーがかった背景を使う
            //                    bgColor.ignoresSafeArea()
            Button(action: {
                self.buttonTextFlag.toggle()
                if buttonTextFlag == true{
                    self.timer = Timer.scheduledTimer(
                        withTimeInterval: 2.0,
                        repeats: true
                    ) { _ in
                        count += 1
                        print("count:\(count)")
                    }
                }
                else{
                    self.timer.invalidate()
                }
            }){
                Text(buttonTextFlag ? "停止":"再生")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(bgColor)
                        // 上側の凸をshadowで表現
                            .shadow(color: .white, radius: 10, x: -7, y: -7)
                        // 下側の凸をshadowで表現
                            .shadow(color: grayColor, radius: 10, x: 7, y: 7)
                    )
            }
        }
    }
    
    //    func updateCount(){
    //        self.timer_sec += 0.1
    //        self.timerLabel.text = String(format: "%.1f", self.timer_sec)
    //    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
