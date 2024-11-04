import { router } from '@kit.ArkUI'

@Entry
@Component
struct Agency {

  build() {
    Column() {
      Column({ space: 8 }) {
        // 头部
        this.renderHeader()

        // 签约信息标题
        Text("签约信息")
          .width("100%")
          .fontSize(18)
          .margin({ bottom: 15 })

        // 签约机构输入框
        this.renderInputRow("签约机构", "桂雅卫生服务站")
        Divider()

        // 签约团队下拉选择框
        Row() {
          Text("签约团队").width("25%")
          Select([{ value: '阳广兰团队' }])
            .layoutWeight(1)
            .backgroundColor(Color.White)
            .value("阳广兰团队") // 设置默认选择的团队
            .fontColor($r('app.color.font_color_ddd'))
        }.width("100%")
        Divider()

        // 签约医生输入框
        this.renderInputRow("签约医生", "阳广兰")
        Divider()

        // 服务包下拉选择框
        Row() {
          Text("服务包").width("25%")
          Select([{ value: '老人服务包' }])
            .layoutWeight(1)
            .backgroundColor(Color.White)
            .value("老人服务包") // 设置默认选择的服务包
            .fontColor($r('app.color.font_color_ddd'))
        }.width("100%")
        Divider()

        // 签约周期输入框
        this.renderInputRow("签约周期", "1年")
        Divider()

        // 费用输入框
        this.renderInputRow("费用", "￥500")
        Divider()

        // 备注部分
        this.renderRemarks()
      }
      .backgroundColor(Color.White)
      .padding({ left: 15, right: 15, bottom: 15 })
      .margin({ bottom: 30 })

      // 主按钮
      this.renderMainButton()
    }
    .width("100%")
    .backgroundColor($r('app.color.bg_gray_primary'))
  }

  // 渲染头部
  @Builder
  renderHeader() {
    Row() {
      Image($r('app.media.icon_40px_left_arrow'))
        .width(20)
        .onClick(() => router.back()) // 返回上一页面
      Text("填写签约信息")
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
    }
    .width("100%")
    .padding({ bottom: 15 })
  }

  // 渲染输入行
  @Builder
  renderInputRow(label: string, placeholder: string) {
    Row() {
      Text(label).width("25%")
      TextInput({ placeholder })
        .backgroundColor(Color.White)
        .layoutWeight(1); // 输入框自适应宽度
    }
    .width("100%")
  }

  // 渲染备注部分
  @Builder
  renderRemarks() {
    Text("备注")
      .width("100%")
      .fontColor($r('app.color.font_color_ccc'))
      .margin({ bottom: 15 })

    TextArea({ placeholder: "请输入备注内容" })
      .padding({ left: 15, right: 15, top: 20, bottom: 20 })
      .backgroundColor($r('app.color.bg_gray_primary'))
      .height(150) // 设置备注区域高度
  }

  // 渲染主按钮
  @Builder
  renderMainButton() {
    Column() {
      Button("主按钮")
        .width("100%")
        .type(ButtonType.Normal)
        .borderRadius(10)
        .fontWeight(FontWeight.Lighter)
        .backgroundColor($r('app.color.bg_green_primary')) // 设置主按钮背景颜色
        .onClick(()=>{
          router.pushUrl({
            url:"component/medical/NewPeopleSuccess"
          })})
    }
    .width("100%")
    .padding({ left: 15, right: 15, top: 5, bottom: 25 })
    .backgroundColor(Color.White)
  }
}
