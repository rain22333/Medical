import { router } from '@kit.ArkUI'

@Entry
@Component
struct NewArchives {
  @State
  date: Date = new Date()

  build() {
    Scroll() {
      Column() {

        Column({ space: 10 }) {
          // 头部
          Row() {
            Image($r('app.media.icon_40px_left_arrow'))
              .width(25)
              .onClick(() => {
                router.back()
              })
            Text("新建居民档案")
              .fontSize(18)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
          }
          .width("100%")


          // 居民基本信息
          Text("居民基本信息")
            .fontSize(18)
            .width("100%")
            .margin({
              top: 35
            })

          // 真实姓名
          Row() {
            Row() {
              Image($r('app.media._'))
                .width(10)
              Text("真实姓名")
            }.width("25%")

            TextInput({ placeholder: '李校蓝' })
              .backgroundColor(Color.White)
              .fontColor($r('app.color.font_color_ccc'))
          }.width("100%")

          Divider()

          // 身份证号
          Row() {
            Row() {
              Image($r('app.media._'))
                .width(10)
              Text("身份证号")
            }.width("25%")

            TextInput({ placeholder: '请填写您的身份证号' })
              .backgroundColor(Color.White)
              .fontColor($r('app.color.font_color_ccc'))
          }.width("100%")

          Divider()


          // 性别
          Row() {
            Row() {
              Image($r('app.media._'))
                .width(10)
              Text("性别")
            }.width("25%")

            Select([
              { value: '男' },
              { value: '女' }
            ])
              .width("80%")
              .backgroundColor(Color.White)
              .value("请选择您的性别")
              .selectedOptionFontColor($r('app.color.font_color_ccc'))
              .fontColor($r('app.color.font_color_999'))


          }.width("100%")

          Divider()

          // 日期
          Row() {
            Row() {
              Image($r('app.media._'))
                .width(10)
              Text("日期")
            }.width("25%")

            TextInput({ placeholder: '请选择您的出生日期', text: this.date.toLocaleDateString() })
              .backgroundColor(Color.White)
              .fontColor($r('app.color.font_color_999'))
              .onClick(() => {
                DatePickerDialog.show({
                  start: new Date("1900-1-1"),
                  end: new Date("2100-12-31"),
                  textStyle: {
                    color: $r('app.color.font_color_ccc'),
                    font: {
                      size: 12,
                      weight: FontWeight.Normal
                    }
                  },
                  selectedTextStyle: {
                    color: $r('app.color.font_color_333'),
                    font: {
                      size: 16,
                      weight: FontWeight.Bold
                    }
                  },
                  acceptButtonStyle: {
                    fontColor: $r('app.color.font_color_999')
                  },
                  cancelButtonStyle: {
                    fontColor: $r('app.color.font_color_999')
                  },
                  alignment: DialogAlignment.Bottom,
                  onDateAccept: (value: Date) => {
                    this.date = value
                  }
                })
              })

          }.width("100%")

          Divider()


          // 联系电话
          Row() {
            Row() {
              Image($r('app.media._'))
                .width(10)
              Text("联系电话")
            }.width("25%")

            TextInput({ placeholder: '13800138000' })
              .backgroundColor(Color.White)
              .fontColor($r('app.color.font_color_ccc'))
          }.width("100%")

          Divider()

          // 现居地
          Row() {
            Row() {
              Text("现居地").margin({ left: 10 })
            }.width("25%")

            TextInput({ placeholder: '请填写现居地' })
              .backgroundColor(Color.White)
              .fontColor($r('app.color.font_color_ccc'))
          }.width("100%")
          .padding({
            bottom: 15
          })

        }.padding({
          left: 15,
          right: 15
        }).backgroundColor(Color.White)


        Column() {
          Row() {
            Text("居民标签")
            TextInput({ placeholder: '请填写标签内容' })
              .fontSize(14)
              .border({ width: 0 })
              .fontColor($r('app.color.font_color_ccc'))
              .backgroundColor(Color.White)
          }.margin({
            bottom: 10
          })

          Divider()
          Flex({
            direction: FlexDirection.Row,
            wrap: FlexWrap.Wrap
          }) {
            this.tag('高血压')
            this.tag('冠心病')
            this.tag('高血脂')
            this.tag('糖尿病')
            this.tag('高血糖')
            this.tag('低血糖')
          }.padding({
            top: 15,
            bottom: 15
          })

        }.width("100%")
        .margin({ top: 15 })
        .backgroundColor(Color.White)
        .padding({
          top: 15,
          left: 5,
          right: 5
        })


        Column() {
          Row({ space: 15 }) {
            Text("关联家人")
            TextInput({ placeholder: "请选择居民家人信息" })
              .backgroundColor(Color.White)
              .fontColor($r('app.color.font_color_ddd'))
              .placeholderFont({
                size: 14
              })
              .onClick(()=>{
                router.pushUrl({
                  url:"component/medical/Relevancy"
                })
              })
          }.padding({
            bottom: 15
          })

          Divider()

          Row() {
            Text("立即签约")
              .width(150)
              .textAlign(TextAlign.Start)
              .margin({
                top:15,
                bottom: 15
              })

            Toggle({
              type:ToggleType.Switch,
              isOn:false
            })
              .width(50)
              .selectedColor($r('app.color.bg_green_primary'))


          }.width("100%")
          .justifyContent(FlexAlign.SpaceBetween)

          Button("主按钮")
            .width("100%")
            .height(50)
            .backgroundColor($r('app.color.bg_green_primary'))
            .fontColor(Color.White)
            .fontWeight(FontWeight.Lighter)
            .borderRadius(12)
            .margin({
              top: 5,
              bottom: 15
            })
            .type(ButtonType.Normal)
            .onClick(()=>{
              router.pushUrl({
                url:"component/medical/Agency"
              })
            })
          Divider()
        }.width("100%")
        .padding(15)
        .backgroundColor(Color.White)
        .margin({
          top: 15
        })

      }
      .backgroundColor($r('app.color.bg_gray_primary'))
      .width("100%")
    }
    .edgeEffect(EdgeEffect.Spring)
    .friction(0.6)
    .scrollBar(BarState.Off)
    .width('100%')
    .height('100%')

  }

  @Builder
  tag(title: string) {
    Column() {
      Text(title)
        .fontWeight(FontWeight.Lighter)
        .textAlign(TextAlign.Center)
        .fontColor($r('app.color.font_color_ccc'))
        .borderRadius(10)
        .backgroundColor($r('app.color.bg_gray_f5f7fb'))
        .padding({
          top: 5,
          bottom: 5,
          left: 15,
          right: 15
        })
        .border({
          width: 1,
          color: $r('app.color.border_gray_f5f7fb')
        })
    }.width("25%")
    .margin({
      bottom: 10
    })
  }
}