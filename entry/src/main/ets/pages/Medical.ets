import { router } from '@kit.ArkUI'

@Entry
@Component
struct Medical {

  build() {
    Scroll() { // 使用Scroll组件包裹，允许垂直滚动
      Column() {

        // 医生信息部分
        this.doctorInfo()

        // 申请信息部分
        this.applySection()

        // 服务申请部分
        this.serviceApplication()

      }.width("100%")
      .backgroundColor("#F3F4F5")
    }
    .edgeEffect(EdgeEffect.Spring)
    .friction(0.6)
    .scrollBar(BarState.Off)
    .width('100%')
    .height('100%')
  }

  // 医生信息部分
  @Builder
  doctorInfo() {
    Column() {
      Row({ space: 10 }) {
        Image($r('app.media.avatar')).width(45)
        Text("阳兰广医生").layoutWeight(1)
        Image($r("app.media.icon_40px_QRCode")).width(20)
      }

      Stack() {
        Image($r('app.media.index_bg')).width("95%")
        Column() {
          Row() {
            this.Data("1000", "已签约人数")
            this.Data("2000", "签约指标")
            this.Data("50%", "签约率")
          }.width("100%")

          Row() {
            this.Data("2500", "服务次数")
            this.Data("3224", "服务人次")
            this.Data("80.3%", "好评率")
          }.width("100%")
        }
        .width("100%")
        .height(110)
        .justifyContent(FlexAlign.SpaceBetween)
      }.margin({ top: 15 })

      // 快捷操作图标
      Row() {
        this.quickAction("app.media.icon_120px_newArchives", "新建档案",()=>{
          router.pushUrl({
            url:"component/medical/NewArchives"
          })
        })
        this.quickAction("app.media.icon_120px_contract_management", "签约管理")
        this.quickAction("app.media.icon_120px_service_manage", "服务管理")
      }
      .width("100%")
      .padding({ left: 20, right: 20 })
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 15 })

    }
    .width("100%")
    .padding({ top: 25, left: 15, right: 15, bottom: 20 })
    .linearGradient({
      direction: GradientDirection.Bottom,
      repeating: false,
      colors: [
        [0xd5ede6, 0.0],
        [0xffffff, 0.8]
      ]
    })
  }

  // 数据展示单元
  @Builder
  Data(num: string, text: string) {
    Column({ space: 5 }) {
      Text(num)
        .fontSize(20)
        .fontColor(Color.White)
      Text(text)
        .fontSize(10)
        .fontColor(Color.White)
        .fontWeight(FontWeight.Normal)
    }
    .width("33%")
    .alignItems(HorizontalAlign.Center)
  }

  // 快捷操作单元
  @Builder
  quickAction(icon: string, label: string,click?:()=>void) {
    Column() {
      Image($r(icon))
        .width(65)
        // 调用可能传入的事件
        .onClick(click)
      Text(label)
        .fontSize(14)
        .fontColor($r('app.color.font_color_999'))
    }
  }

  // 申请信息部分
  @Builder
  applySection() {
    Column() {
      // 申请签约标题行
      Row({ space: 5 }) {
        Text("申请签约")
        Stack() {
          Image($r('app.media.icon_30px_message'))
            .width(15)
          Text("2")
            .fontSize(12)
            .fontColor(Color.White)
        }
        Text("查看全部")
          .fontSize(14)
          .fontColor($r('app.color.font_color_999'))
          .layoutWeight(1)
          .textAlign(TextAlign.End)
      }.width("100%")

      // 申请详情内容
      this.ApplyInfo()
      Divider()
      this.ApplyInfo()

    }.width("100%")
    .padding(15)
    .margin({ top: 15 })
    .backgroundColor(Color.White)
  }

  // 申请详情单元
  @Builder
  ApplyInfo() {
    Row({ space: 5 }) {
      Image($r("app.media.icon_40px_man"))
        .width(20)
        .alignSelf(ItemAlign.Start)
      Column() {
        // 个人信息行
        Row({ space: 5 }) {
          Text("韦栋")
          Text("58岁")
            .fontSize(14)
            .fontColor($r('app.color.font_color_999'))
            .layoutWeight(1)
          Text("待审核")
            .fontSize(12)
            .fontColor($r('app.color.font_color_orange'))
            .padding({ top: 6, bottom: 6, left: 12, right: 12 })
            .backgroundColor($r('app.color.font_color_orange_second'))
            .borderRadius(18)
        }.width("100%")

        // 身份证号行
        this.textRow("身份证号", "442355******2225844")

        // 签约团队行
        this.textRow("签约团队", "阳兰广团队")

        // 服务包行
        this.textRow("服务包", "老年人服务包")

      }.layoutWeight(1)
    }
    .width('100%')
    .padding({ top: 15, bottom: 15 })
  }

  // 信息展示行
  @Builder
  textRow(label: string, content: string) {
    Row() {
      Text(label)
        .fontSize(14)
        .fontColor($r('app.color.font_color_999'))
        .width("20%")
      Text(content)
        .fontSize(14)
        .fontColor($r('app.color.font_color_999'))
        .margin({ left: 30 })
    }
    .width("100%")
    .padding({ top: 10, bottom: 10 })
  }

  // 服务申请部分
  @Builder
  serviceApplication() {
    Column() {
      Row({ space: 5 }) {
        Text("服务申请")
        Stack() {
          Image($r('app.media.icon_30px_message')).width(15)
          Text("2").fontSize(12).fontColor(Color.White)
        }
        Text("查看全部")
          .fontSize(14)
          .fontColor($r('app.color.font_color_999'))
          .layoutWeight(1)
          .textAlign(TextAlign.End)
      }.width("100%")

      // 服务申请的详细内容
      this.ServiceInfo()
      Divider()
      this.ServiceInfo()

    }.width("100%")
    .padding(15)
    .margin({ top: 15 })
    .backgroundColor(Color.White)
  }

  // 服务申请信息单元
  @Builder
  ServiceInfo() {
    Row({ space: 5 }) {
      Image($r("app.media.icon_40px_man")).width(20).alignSelf(ItemAlign.Start)
      Column() {
        // 服务内容行
        Row({ space: 5 }) {
          Text("韦栋")
          Text("40岁")
            .fontSize(14)
            .fontColor($r('app.color.font_color_999'))
          Text("机构门诊")
            .fontSize(14)
            .fontColor($r('app.color.font_color_second_green'))
            .layoutWeight(1)
          Text("待审核")
            .fontSize(12)
            .fontColor($r('app.color.font_color_orange'))
            .padding({ top: 6, bottom: 6, left: 12, right: 12 })
            .backgroundColor($r('app.color.font_color_orange_second'))
            .borderRadius(18)
        }.width("100%")

        // 服务内容详情行
        this.textRow("服务包", "老年人服务包")
        this.textRow("服务项目", "高血压健康随访")
        this.textRow("申请时间", "2022-09-25 10:00:30")

      }.layoutWeight(1)
    }
    .width('100%')
    .padding({ top: 15, bottom: 15 })
  }
}


export default Medical
