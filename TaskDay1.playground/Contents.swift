// ★課題1-1 型
let itemA: Int = 1000
let itemB: String = "こんにちは"
let itemC: Double = 42.195
let itemD: Bool = true

// ★課題1-2 四則演算
let valueA: Int = 100
let valueB: Int = 20

print(valueA + valueB)
print(valueA - valueB)
print(valueA * valueB)
print(valueA / valueB)

// ★課題1-3 if文
// 任意の値を代入する変数 valueCを定義
var valueC: Int = 890

if valueC < 10 {
    print("\(valueC)は1桁の値です。")
    
} else if valueC < 100 {
    print("\(valueC)は2桁の値です。")
    
} else if valueC < 1000 {
    print("\(valueC)は3桁の値です。")
    
} else if valueC >= 1000 {
    print("\(valueC)は4桁以上の値です。")
}

// ★課題1-4 switch文
switch valueC{
case 0...9:
    print("\(valueC)は1桁の値です。")
    
case 10...99:
    print("\(valueC)は2桁の値です。")
    
case 100...999:
    print("\(valueC)は3桁の値です。")
    
default:
    print("\(valueC)は4桁以上の値です。")
}


// ★課題1-5 関数単一の引数
func calculationA(value: Int){
    print(value * 10)
}

calculationA(value: 10)


// ★課題1-6 関数複数の引数
func calculationB(valueA: Int,valueB: Int){
    print(valueA % valueB)
}

calculationB(valueA: 100,valueB :30)

// ★課題1-7 関数の戻り値
func calculationC(valueA: Int,valueB: Int) -> Int{
    return valueA + valueB
}

let sum = calculationC(valueA: 40,valueB: 25)

if sum % 2 == 0 {
    print("計算結果\(sum)は偶数です。")
} else {
    print("計算結果\(sum)は奇数です。")
}

// ★課題1-8 クラスのインスタンス
class HogeA {
    func put(){
        print("クラスAインスタンスです")
    }
}

// インスタンス化
let insA = HogeA()

// クラスのメソッドを使うには、インスタンス名のあとに.を付ける!!
insA.put()

// ★課題1-9 クラスのインスタンスと関数
class HogeB {
    func putName(name: String){
        print("私の名前は\(name)です")
    }
}

// インスタンス化
let takashi = HogeB()
let ken = HogeB()

// putNameメソッドを呼び出す
takashi.putName(name: "たかし")
ken.putName(name: "ケン")


// 課題1-10 イニシャライザ
class HogeC {
    
    init(name: String){
        print("私の名前は\(name)です")
        
    }
}

let yamada = HogeC(name:"やまだ")
let miyata = HogeC(name: "みやた")


// 課題1-11 Enum
// 参考HP https://www.sejuku.net/blog/35711
enum User: String {
    case name = "名前"
    case age = "年齢"
    case bloodType = "血液型"
}

// userを定義
let user: User = .name

switch user {
case .name:
    print(User.name.rawValue)
    
case .age:
    print(User.age.rawValue)
    
case .bloodType:
    print(User.bloodType.rawValue)
}

// 課題1-12 for文
for index in 1...50 {
    print(index)
}

// 課題1-13配列(追加)
var valueE: [Int] = []
for i in 1...50 {
    valueE.append(i)
}

print(valueE)


// 課題1-14配列(削除)
var valueF: [String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]

valueF.remove(at: 2)
print(valueF)


// 課題1-15 配列(ソート)
var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]

// 昇順
valueG.sort{$0 < $1}
print(valueG)

//降順
valueG.sort{$0 > $1}
print(valueG)


//課題1-16(要素数)
print("-- 課題1-16 --")

print(valueG.count)


//課題1-17(辞書型)
let valueH: [String:Any] = [
    "key" : "value",
    "a" : 1,
    "b" : 2,
    "c" : 3
]


print(valueH["b"])

// 課題1-18 Optional
// Optional BidingでvalueHのbの値を出力
if let valueHb:Any = valueH["b"]{
    print(valueHb)
}

// 課題1-19 nil
if let valueHk:Any = valueH["k"]{
    print(valueHk)
} else {
    print("値はnilです。")
}

// 課題1-20 総復習
let valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]


for i in 0...valueI.count - 1 {
    if let value = valueI[i] as? Int {
        print("数値\(value)です。")
    } else if let value = valueI[i] as? String {
        print(value)
    } else {
        print("値はnilです。")
    }
}
