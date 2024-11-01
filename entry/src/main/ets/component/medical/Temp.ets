interface Family {
  name: string,
  age: number,
  gender: string
}

// xxx.ets
@Entry
@Component
struct AlphabetIndexerSample {

  @State
  currentIndex:number = 0

  familyArr: Family[][] = [
    [{ name: "融娅志", age: 12, gender: "女" }],
    [{ name: "符振", age: 18, gender: "男" }],
    [{ name: "蒋融馥", age: 32, gender: "女" }],
    [{ name: "兰荔", age: 18, gender: "男" }]
  ]
  value: string[] = ['R', 'F', 'J','L']

  build() {
    Stack({ alignContent: Alignment.Start }) {
      Row() {
        List() {
          ForEach(this.familyArr, (item: Family[],index:number) => {
            ForEach(item,(el:Family)=>{
              ListItem() {
                Text(el.name)
                  .width('80%')
                  .height('5%')
                  .fontSize(30)
                  .textAlign(TextAlign.Center)
                  .onClick(()=>{
                    this.currentIndex = index
                  })
                  .fontColor(this.currentIndex === index ? Color.White : '#ccf')
              }
            })
          })
        }
        .width('50%')
        .height('100%')
      }

      AlphabetIndexer({ arrayValue: this.value, selected: 0 })
        .selectedColor(0xFFFFFF)// 选中项文本颜色
        .selectedBackgroundColor(0xCCCCCC)// 选中项背景颜色
        .selectedFont({ size: 16, weight: FontWeight.Bolder })// 选中项字体样式
        .itemSize(28)// 每一项的尺寸大小
        .onSelect((index: number) => {
          // 选中某个字母 找到这个索引对应的联系人数组，然后选中
          this.currentIndex = index
        })
        .alignSelf(ItemAlign.End)
        .selected(this.currentIndex)

    }
    .width('100%')
    .height('100%')
  }
}