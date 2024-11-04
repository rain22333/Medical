import { router } from '@kit.ArkUI' // 导入路由模块

@Entry
@Component
@Preview
struct Relevancy {
  // 联系人数据，按字母分组
  private contacts: Contact[][] = [
    [{ name: "融娅志", age: 12, gender: false }, { name: "融娅志", age: 12, gender: false }],
    [{ name: "符振", age: 18, gender: true }],
    [{ name: "蒋融馥", age: 32, gender: false }],
    [{ name: "兰荔", age: 18, gender: true }]
  ];

  // 字母索引，用于展示联系人的首字母
  value: string[] = ['R', 'F', 'J', 'L']

  @State
  currentIndex: number = 0 // 当前选中的联系人索引

  build() {
    // 构建界面
    Scroll() {
      Column() {
        // 顶部导航栏
        Row() {
          Image($r('app.media.icon_40px_left_arrow')) // 返回按钮
            .width(25)
            .onClick(() => {
              router.back() // 点击返回按钮，返回上一界面
            })

          Text("选择家庭成员") // 界面标题
            .fontSize(18)

          Text("完成") // 完成按钮
            .fontSize(14)
            .fontColor($r('app.color.font_color_ccc')) // 灰色字体
        }.width("100%")
        .justifyContent(FlexAlign.SpaceBetween) // 水平空间均匀分布
        .padding({
          left: 10,
          right: 10,
          bottom: 20
        })

        // 显示联系人列表
        Stack({ alignContent: Alignment.Start }) {
          Row() {
            List() {
              ForEach(this.contacts, (item: Contact[], index: number) => {
                ListItem() {
                  Column() {
                    // 字母行
                    Text(this.value[index]).width("100%")
                      .backgroundColor($r('app.color.border_gray_f5f7fb')) // 背景颜色
                      .padding({
                        left: 25,
                        top: 15,
                        bottom: 15
                      })

                    // 遍历联系人
                    ForEach(item, (el: Contact, elIndex: number) => {
                      ListItem() {
                        Column() {
                          Row({ space: 10 }) {
                            // 单选按钮
                            Radio({ value: '选中', group: '是否选中' })
                              .onClick(() => {
                                this.currentIndex = index // 更新当前选中索引
                              })
                              .radioStyle({
                                checkedBackgroundColor: $r('app.color.bg_green_primary'), // 选中背景色
                                uncheckedBorderColor: Color.White // 未选中边框色
                              })
                              .checked(this.currentIndex === index && elIndex === 0) // 选中状态
                              .border({
                                width: 2,
                                color: '#ddd' // 边框颜色
                              })
                              .borderRadius(13) // 边框圆角
                              .width(26)

                            // 显示性别图标
                            Image(el.gender ? $r("app.media.family_logo_man") : $r("app.media.family_logo_wman"))
                              .width(55)

                            // 显示姓名
                            Text(el.name)
                              .fontSize(18)

                            // 显示年龄
                            Text(el.age + '岁')
                              .fontSize(12)
                              .fontColor($r('app.color.font_color_ccc')) // 灰色字体

                            // 显示性别图标
                            Image(el.gender ? $r("app.media.icon_20px_man") : $r("app.media.icon_20px_woman"))
                              .width(20)
                          }.width("100%")
                          .padding({
                            top: 15,
                            bottom: 15
                          })
                          .backgroundColor(Color.White) // 背景颜色
                        }
                      }
                    })
                  }
                }
              })
            }
            .height('100%') // 列表高度
          }.width("100%")

          // 字母索引器
          AlphabetIndexer({ arrayValue: this.value, selected: 0 })
            .selectedColor($r('app.color.font_color_orange')) // 选中项文本颜色
            .selectedFont({ size: 20, weight: FontWeight.Normal }) // 选中项字体样式
            .itemSize(35) // 每一项的尺寸大小
            .onSelect((index: number) => {
              // 选中某个字母，更新当前选中索引
              this.currentIndex = index
            })
            .alignSelf(ItemAlign.End) // 对齐方式
            .selected(this.currentIndex) // 当前选中项
            .position({
              x: '85%' // 位置
            })
            .height("80%") // 高度
        }
        .width('100%')
        .height('100%')
      }
    }.edgeEffect(EdgeEffect.Spring) // 滑动效果
    .friction(0.6) // 摩擦力
    .scrollBar(BarState.Off) // 隐藏滚动条
    .width('100%')
    .height('100%')
  }
}

// 联系人接口定义
interface Contact {
  name: string; // 姓名
  age: number; // 年龄
  gender: boolean; // 性别，男性为true，女性为false
}
