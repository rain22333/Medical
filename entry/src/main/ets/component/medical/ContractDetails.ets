@Entry
@Component
struct ContractDetails {
  build() {
    Column(){
      Row(){
        Image($r('app.media.icon_40px_left_arrow'))
          .width(20)
        Text("签约详情")
          .fontSize(18)
        Text("查看协议")
          .fontSize(14)
          .fontColor($r('app.color.font_green'))
      }.width("100%")
      .justifyContent(FlexAlign.SpaceBetween)
    }.width("100%")
    .height("100%")
    .padding({
      left:15,
      right:15
    })
  }
}