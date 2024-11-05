import { router } from '@kit.ArkUI'

/**
 * 待处理签约申请
 */
@Entry
@Component
struct ToBeSigned {
  build() {
      Column(){
          Row(){
            Image($r('app.media.icon_40px_left_arrow'))
              .width(20)
              .onClick(()=>{
                router.back()
              })
            Text("待处理签约申请")
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
          }.width("100%")

        // TODO 抽取成公共模块
        this.ApplyInfo()
        Divider()
        this.ApplyInfo()
      }.width("100%")
      .padding({
        left:15,
        right:15
      })
    .height("100%")
  }


  // 申请详情单元 TODO: 可以传入对象进行渲染
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
          // Text("待审核")
          //   .fontSize(12)
          //   .fontColor($r('app.color.font_color_orange'))
          //   .padding({ top: 6, bottom: 6, left: 12, right: 12 })
          //   .backgroundColor($r('app.color.font_color_orange_second'))
          //   .borderRadius(18)
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
}