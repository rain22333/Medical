import { renderHeader } from '../../common/Info'

/**
 * 签约管理-签约成功
 */
@Entry
@Component
struct AgencySuccess {
  build() {
    Scroll(){
      Column() {

        // 头部
        renderHeader("签约详情","查看协议")

        // TODO: 可以将整个页面抽取成公共模块
        // 签约成功
        Row({space:15}){
          Image($r('app.media.icon_40px_remind'))
            .width(25)
          Text("签约成功")
            .fontColor($r('app.color.font_color_green'))
            .fontWeight(FontWeight.Lighter)
        }.width("100%")
        .padding(15)
        .backgroundColor($r('app.color.bg_green_second'))

        // 居民信息
        this.renderSectionHeader("居民信息")

        // 真实姓名
        this.renderInfoRow("真实姓名", "王语嫣")

        // 身份证号
        this.renderInfoRow("身份证号", "524895123548752236")

        // 性别
        this.renderInfoRow("性别", "女")

        // 年龄
        this.renderInfoRow("年龄", "23")

        // 联系电话
        this.renderInfoRow("联系电话", "1380013800")

        // 现居住地
        this.renderInfoRow("现居住地", "南海区长青路58号2栋23楼2356室")

        Row(){
          this.renderSectionHeader("签约信息")
        }.width("100%")
        .margin({top:15})

        // 签约状态
        this.renderInfoRow("签约状态", "待审核")

        // 签约机构
        this.renderInfoRow("签约机构", "桂雅卫生服务站")

        // 签约医生
        this.renderInfoRow("签约医生", "阳广兰")

        // 服务包
        this.renderInfoRow("服务包", "健康体验包")

        // 签约周期
        this.renderInfoRow("签约周期", "2年")

        // 现居住地
        this.renderInfoRow("现居住地", "南海区常青路58号2栋23楼2356室")

        // 费用
        this.renderInfoRow("费用", "￥200")

        // 签约申请时间
        this.renderInfoRow("签约申请时间", "2022/05/26 10:20:30")

        // 签约备注
        this.renderRemark()


      }
      .width("100%")
      .backgroundColor($r('app.color.bg_gray_f5f7fb'))
    }.edgeEffect(EdgeEffect.Spring)
    .friction(0.6)
    .scrollBar(BarState.Off)
    .width('100%')
    .height('100%')

  }



  // 渲染节标题
  @Builder
  renderSectionHeader(title:string) {
    Text(title)
      .fontSize(18)
      .width("100%")
      .padding(15)
      .backgroundColor(Color.White)
  }

  // 渲染信息行
  @Builder
  renderInfoRow(label:string, value:string) {
    Row() {
      Text(label)
        .width("35%")
      Text(value)
        .fontSize(14)
        .fontColor($r('app.color.font_color_999'))
    }
    .padding(15)
    .backgroundColor(Color.White)
    .width("100%")

    Divider()
  }



  // 签约备注
  @Builder
  renderRemark(){
    Column({space:15}){
      Text("签约备注")
        .width("100%")
        .fontSize(18)

      TextArea({placeholder:"无"})
        .height(150)
        .borderRadius(10)
        .backgroundColor($r('app.color.textArea_bg'))

    }.width("100%")
    .padding({
      left:15,
      right:15,
      top:25,
      bottom:25
    })
    .backgroundColor(Color.White)
    .margin({top:15})
  }
}