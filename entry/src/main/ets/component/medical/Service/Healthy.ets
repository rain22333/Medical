/**
 * Index-服务管理-健康随访页面
 */
import { router } from '@kit.ArkUI'

@Extend(TextInput) function textInputStyle(){
  .fontSize(14)
  .placeholderFont({
    size:14
  })
  .placeholderColor($r('app.color.font_color_ccc'))
  .fontColor($r('app.color.font_color_ccc'))
  .layoutWeight(5)
  .backgroundColor(Color.White)
}
@Entry
@Component
struct Healthy {




  build() {
    Column(){

      Column(){
        Row(){
          Image($r('app.media.icon_40px_left_arrow'))
            .width(25)
            .onClick(()=>{
              router.back()
            })
          Text("健康随访信息")
            .fontSize(18)
            .layoutWeight(1)
            .textAlign(TextAlign.Center)
        }.width("100%")
        .padding(15)

        // 血压
        Row(){
          Image($r('app.media._'))
            .width(10)
          Text("血压")
            .layoutWeight(2)
          TextInput({placeholder:"请填写血压"})
            .textInputStyle()
          Text("mmHg")
            .fontColor($r('app.color.font_color_999'))
        }.padding(15)

        Divider().width("90%")

        // 空腹血糖
        Row(){
          Image($r('app.media._'))
            .width(10)
          Text("空腹血糖")
            .layoutWeight(2)
          TextInput({placeholder:"请填写血糖数值"})
            .textInputStyle()
          Text("mmol/L")
            .fontColor($r('app.color.font_color_999'))
        }.padding(15)

        Divider().width("90%")

        // 心率
        Row(){
          Image($r('app.media._'))
            .width(10)
          Text("心率")
            .layoutWeight(2)
          TextInput({placeholder:"102"})
            .textInputStyle()
          Text("bmp")
            .fontColor($r('app.color.font_color_999'))
        }.padding(15)

        Divider().width("90%")
      }.backgroundColor(Color.White)

      // 病情描述
      Column({space:15}){
        Text("病情描述")
          .fontSize(18)
          .width("100%")

        TextArea({placeholder:"请填写病情描述"})
          .padding(15)
          .height(130)
          .borderRadius(2)
          .placeholderColor($r('app.color.font_color_ccc'))
          .backgroundColor($r('app.color.textArea_bg'))
      }.padding(15)
      .backgroundColor(Color.White)
      .width("100%")
      .margin({
        top:10
      })

      // 健康指导
      Column({space:15}){
        Text("健康指导")
          .fontSize(18)
          .width("100%")

        TextArea({placeholder:"请填写健康指导"})
          .padding(15)
          .height(130)
          .borderRadius(2)
          .placeholderColor($r('app.color.font_color_ccc'))
          .backgroundColor($r('app.color.textArea_bg'))
      }.padding(15)
      .backgroundColor(Color.White)
      .width("100%")
      .margin({
        top:10
      })


      Row(){
        Button("主按钮")
          .backgroundColor($r('app.color.bg_green_primary'))
          .type(ButtonType.Normal)
          .borderRadius(5)
          .width("100%")
          .onClick(()=>{
            // 跳转到服务详情页面
            router.pushUrl({
              url:"component/medical/Service/ServiceDetail"
            })
          })

      }.width("100%")
      .padding({
        left:10,
        right:10,
        top:5,
        bottom:25
      })
      .backgroundColor(Color.White)

    }.width("100%")
    .backgroundColor($r('app.color.bg_gray_f5f7fb'))
  }




}