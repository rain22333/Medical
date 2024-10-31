import { ServicePackTypeEnum } from '../enums/ServicePackTypeEnum'

export default class  User{
  gender: boolean = false
  name:string = ''
  age:number = 18
  idCard:string = ''
  team:string = ''
  servicePack:ServicePackTypeEnum = ServicePackTypeEnum.OLD

  constructor(gender: boolean, name: string, age: number, idCard: string, team: string, servicePack: ServicePackTypeEnum) {
    this.gender = gender
    this.name = name
    this.age = age
    this.idCard = idCard
    this.team = team
    this.servicePack = servicePack
  }



}