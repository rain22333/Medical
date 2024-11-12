/*
 * 服务管理
 */
import { router } from '@kit.ArkUI'

@Entry
@Component
struct ServiceManagement {
  @State
  list: string[] = ["全部", "待审核", "待服务", "已完成"]

  build() {
    Column() {
      Row(){
        Image($r('app.media.icon_40px_left_arrow'))
          .width(20)
          .onClick(()=>{
            router.back()
          })
        Text("服务管理")
          .layoutWeight(1)
          .textAlign(TextAlign.Center)

      }.width("100%")
      .padding({
        left:15,
        right:15
      })


      Tabs(){
        ForEach(this.list,(item:string,index:number)=>{
          // TODO: 根据不同的item展示不同的内容  ? 也可以随着index的变化筛选所展示的数据
          TabContent(){
            Scroll(){
              Column(){
                this.serviceInfo()
                Divider()
                this.serviceInfo()
                Divider()
                this.serviceInfo()
                Divider()
                this.serviceInfo()
                Divider()
              }
              .width("100%")
              .padding({
                left:15,
                right:15
              })
            }.edgeEffect(EdgeEffect.Spring)
            .friction(0.6)
            .scrollBar(BarState.Off)
            .width('100%')
            .height('100%')

          }.tabBar(SubTabBarStyle
            .of(this.list[index])
            .indicator({
              color: $r('app.color.border_green_primary'),
              height:6,
              borderRadius: 3,
              marginTop: 10
            }).labelStyle({
              unselectedColor: $r('app.color.font_color_999'),
              selectedColor: $r('app.color.font_green')
            })
          )

        })
      }.animationDuration(200)
      .divider({
        strokeWidth:1
      })
    }
  }



  @Builder
  serviceInfo(){
    Row({ space: 5 }) {
      Image($r("app.media.icon_40px_man"))
        .width(20)
        .alignSelf(ItemAlign.Start)
      Column() {
        // 个人信息行
        Row({ space: 10 }) {
          Text("生海香")
          Text("58岁")
            .fontSize(14)
            .fontColor($r('app.color.font_color_999'))

          Text("机构门诊")
            .fontSize(14)
            .fontColor($r('app.color.font_color_green'))
            .layoutWeight(1)

          Text("待审核")
            .padding({
              left:10,
              right:10,
              top:3,
              bottom:3
            })
            .fontColor($r('app.color.font_color_orange'))
            .backgroundColor($r('app.color.font_color_orange_second'))
            .borderRadius(5)
        }.width("100%")
        .alignItems(VerticalAlign.Top)

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
    .onClick(()=>{
      router.pushUrl({
        url:"component/medical/Service/WaitForReview"
      })
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

}
