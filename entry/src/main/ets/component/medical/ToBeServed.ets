/**
 * 待处理服务申请
 */
import { router } from '@kit.ArkUI'

@Entry
@Component
struct ToBeServed {

  build() {
    Column(){

      Row(){
        Image($r('app.media.icon_40px_left_arrow'))
          .width(20)
          .onClick(()=>{
            router.back()
          })
        Text("待处理服务申请")
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
      }.width("100%")

      this.ServiceInfo()

    }.width("100%")
    .height("100%")
    .padding({
      left:15,
      right:15
    })
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
            .fontSize(12)
            .fontColor($r('app.color.font_color_999'))
          Text("机构门诊")
            .fontSize(12)
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