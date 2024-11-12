@Builder
export function peopleInfo(){
  Column(){
    Text("居民信息")
      .fontSize(18)
      .width("100%")
      .margin({
        bottom:10
      })
      .padding({
        left:15
      })
    renderInfoRow("真实姓名","王紫嫣")
    renderInfoRow("身份证号","52895123548752236")
    renderInfoRow("性别","女")
    renderInfoRow("年龄","23")
    renderInfoRow("联系电话","1380013800")
    renderInfoRow("现居住地","南海区常青路58号2栋23楼2356室")

  }.width("100%")
  .padding({
    top:10,
    left:10,
    right:10
  })
  .backgroundColor(Color.White)
}

// 渲染信息行
@Builder
function renderInfoRow(label:string, value:string) {
  Row() {
    Text(label)
      .width("35%")
    Text(value)
      .fontSize(14)
      .fontColor($r('app.color.font_color_999'))
  }
  .padding(15)
  .width("100%")

  Divider().width("95%")
}