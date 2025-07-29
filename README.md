# Learn-Flutter

---

### 🔹 1. **Widget**

**ความหมาย:** องค์ประกอบพื้นฐานของ UI ใน Flutter ทุกอย่างคือ widget เช่น ปุ่ม ข้อความ รูปภาพ

**ตัวอย่าง:**

```dart
Text("สวัสดี")   // แสดงข้อความ
ElevatedButton(
  onPressed: () {},
  child: Text("กดที่นี่"),
)
```

---

### 🔹 2. **StatelessWidget**

**ความหมาย:** Widget ที่ไม่มีการเปลี่ยนแปลงของ state ข้อมูลคงที่

**การใช้งาน:**

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("นี่คือ Stateless");
  }
}
```

---

### 🔹 3. **StatefulWidget**

**ความหมาย:** Widget ที่สามารถเปลี่ยนแปลงข้อมูลภายในตัวเองได้ เช่น กดแล้วเปลี่ยนสี

**การใช้งาน:**

```dart
class MyStateful extends StatefulWidget {
  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("กด $count ครั้ง"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("เพิ่ม"),
        )
      ],
    );
  }
}
```

---

### 🔹 4. **setState()**

**ความหมาย:** ใช้ใน `StatefulWidget` เพื่ออัปเดต UI เมื่อข้อมูลเปลี่ยนแปลง

**ตัวอย่าง:**

```dart
setState(() {
  count += 1;
});
```

---

### 🔹 5. **BuildContext**

**ความหมาย:** ตัวกลางที่ใช้เข้าถึง widget tree เช่น การเข้าถึง Theme, Navigator

**ตัวอย่าง:**

```dart
Navigator.of(context).push(MaterialPageRoute(builder: (_) => NextPage()));
```

---

### 🔹 6. **Scaffold**

**ความหมาย:** โครงสร้างพื้นฐานของหน้า เช่น app bar, body, drawer ฯลฯ

**ตัวอย่าง:**

```dart
Scaffold(
  appBar: AppBar(title: Text("หน้าแรก")),
  body: Center(child: Text("ยินดีต้อนรับ")),
)
```

---

### 🔹 7. **MaterialApp**

**ความหมาย:** วัตถุหลักที่ใช้ครอบแอปทั้งหมดในแบบ Material Design

**ตัวอย่าง:**

```dart
MaterialApp(
  home: MyHomePage(),
)
```

---

### 🔹 8. **Navigator**

**ความหมาย:** ใช้ในการนำทางไปยังหน้าอื่น เช่น push, pop

**ตัวอย่าง:**

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);
```

---

### 🔹 9. **Column / Row**

**ความหมาย:** ใช้จัด layout แนวตั้ง (Column) และแนวนอน (Row)

**ตัวอย่าง:**

```dart
Column(
  children: [
    Text("ชื่อ"),
    Text("อายุ"),
  ],
)
```

---

### 🔹 10. **Container**

**ความหมาย:** กล่องที่ใช้ตกแต่งหรือจัดตำแหน่ง เช่น padding, margin, background

**ตัวอย่าง:**

```dart
Container(
  padding: EdgeInsets.all(10),
  color: Colors.blue,
  child: Text("กล่องข้อความ"),
)
```

---

## 🎨 คำศัพท์เกี่ยวกับ "การตกแต่ง" (Styling & Decoration)

---

### 🔹 `padding`

**ความหมาย:** ระยะห่างภายใน widget (จากขอบ container เข้าด้านใน)

**ตัวอย่าง:**

```dart
Padding(
  padding: EdgeInsets.all(16),
  child: Text("มีระยะขอบในรอบด้าน"),
)
```

---

### 🔹 `margin`

**ความหมาย:** ระยะห่างภายนอก widget (จาก widget อื่นหรือขอบจอ)

**ใช้ผ่าน `Container`:**

```dart
Container(
  margin: EdgeInsets.symmetric(horizontal: 20),
  child: Text("มีระยะห่างด้านข้าง"),
)
```

---

### 🔹 `alignment`

**ความหมาย:** จัดตำแหน่งของ widget ภายใน container

**ตัวอย่าง:**

```dart
Container(
  alignment: Alignment.center,
  child: Text("อยู่ตรงกลาง"),
)
```

---

### 🔹 `decoration`

**ความหมาย:** ใช้ตกแต่ง widget เช่น ใส่สี พื้นหลัง ขอบมน เงา

**ใช้กับ `Container`:**

```dart
Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5,
        offset: Offset(2, 2),
      ),
    ],
  ),
)
```

---

### 🔹 `BoxDecoration`

**ความหมาย:** ตัวจัดการการตกแต่งแบบกล่อง เช่น สี มุม เงา กรอบ

**องค์ประกอบสำคัญภายใน:**

* `color` : สีพื้นหลัง
* `borderRadius` : มุมโค้ง
* `boxShadow` : เงา
* `border` : กรอบ

---

### 🔹 `TextStyle`

**ความหมาย:** การกำหนดรูปแบบตัวอักษร เช่น ขนาด สี ความหนา

**ตัวอย่าง:**

```dart
Text(
  "ข้อความ",
  style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  ),
)
```

---

### 🔹 `Color`

**ความหมาย:** ใช้กำหนดสี

**ตัวอย่าง:**

```dart
color: Colors.green
color: Color(0xFF42A5F5)  // แบบ HEX
```

---

### 🔹 `fontWeight`

**ความหมาย:** ความหนาของตัวอักษร

**ตัวเลือก:**

* `FontWeight.normal`
* `FontWeight.bold`
* `FontWeight.w500` (หรือเลขอื่นๆ)

---

### 🔹 `border`

**ความหมาย:** เส้นขอบของ Container

**ตัวอย่าง:**

```dart
decoration: BoxDecoration(
  border: Border.all(
    color: Colors.black,
    width: 2,
  ),
)
```

---

### 🔹 `borderRadius`

**ความหมาย:** มุมของกล่อง ให้โค้งมนได้

**ตัวอย่าง:**

```dart
borderRadius: BorderRadius.circular(12)
```

---

### 🔹 `boxShadow`

**ความหมาย:** เงาด้านหลังของกล่อง

**ตัวอย่าง:**

```dart
boxShadow: [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    offset: Offset(2, 2),
    blurRadius: 4,
  )
]
```

---

### 🔹 `Gradient`

**ความหมาย:** ไล่เฉดสี (สามารถใส่ใน `BoxDecoration`)

**ตัวอย่าง:**

```dart
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.red, Colors.orange],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
)
```

---

