import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { IEmployeeGetDto } from 'src/models/hrm/IEmployeeDto';
import { IMeterSizeGetDto, IMeterSizePostDto } from 'src/models/system-control/IMeterSizeDto';
import { UserService } from '../user.service';
import { ResponseMessage } from 'src/models/ResponseMessage.Model';
import { ICustomerCategoryGetDto, ICustomerCategoryPostDto } from 'src/models/system-control/ICustomerCategoryDto';
import { IVillageGetDto, IVillagePostDto } from 'src/models/system-control/IVillageDto';
import { IBillCycleGetDto, IBillCyclePostDto } from 'src/models/system-control/IBillCycleDto';
import { IMeterDigitPostDto,IMeterDigitGetDto  } from 'src/models/system-control/IMeterDigitDto';
import { IMeterModelGetDto, IMeterModelPostDto } from 'src/models/system-control/IMeterModelDto';
import { IMeterTypeGetDto, IMeterTypePostDto } from 'src/models/system-control/IMeterTypeDto';
import { IMeterClassGetDto, IMeterClassPostDto } from 'src/models/system-control/IMeterClassDto';

@Injectable({
  providedIn: 'root'
})
export class ScsDataService {
  constructor(private http: HttpClient, private userService: UserService) { }
  readonly baseUrl = environment.baseUrl;



  //customer category 
  getCustomerCategory() {
    return this.http.get<ICustomerCategoryGetDto[]>(this.baseUrl + "/CustomerCategory/GetCustomerCategory")
  }
  addCustomerCategory(addCustomerCategory: ICustomerCategoryPostDto) {
    addCustomerCategory.createdById = this.userService.getCurrentUser().userId
    return this.http.post<ResponseMessage>(this.baseUrl + "/CustomerCategory/AddCustomerCategory", addCustomerCategory)
  }
  updateCustomerCategory(updateCustomerCategory: ICustomerCategoryGetDto) {
    return this.http.put<ResponseMessage>(this.baseUrl + "/CustomerCategory/UpdateCustomerCategory", updateCustomerCategory)
  }

  deleteCustomerCategory(CustomerCategoryId: string) {
    return this.http.delete<ResponseMessage>(this.baseUrl + `/CustomerCategory/DeleteCustomerCategory?CustomerCategoryId=${CustomerCategoryId}`)
  }
  //meter-size
  getMeterSize() {
    return this.http.get<IMeterSizeGetDto[]>(this.baseUrl + "/MeterSize/GetMeterSize")
  }
  addMeterSize(addMeterSize: IMeterSizePostDto) {
    addMeterSize.createdById = this.userService.getCurrentUser().userId
    return this.http.post<ResponseMessage>(this.baseUrl + "/MeterSize/AddMeterSize", addMeterSize)
  }
  updateMeterSize(updateMeterSize: IMeterSizeGetDto) {
    return this.http.put<ResponseMessage>(this.baseUrl + "/MeterSize/UpdateMeterSize", updateMeterSize)
  }

  deleteMeterSize(meterSizeId: string) {
    return this.http.delete<ResponseMessage>(this.baseUrl + `/MeterSize/DeleteMeterSize?meterSizeId=${meterSizeId}`)

  }//vilalge

  getVillage() {
    return this.http.get<IVillageGetDto[]>(this.baseUrl + "/Village/GetVillage")
  }
  addVillage(addVillage: IVillagePostDto) {
    addVillage.createdById = this.userService.getCurrentUser().userId
    return this.http.post<ResponseMessage>(this.baseUrl + "/Village/AddVillage", addVillage)
  }
  updateVillage(updateVillage: IVillageGetDto) {
    return this.http.put<ResponseMessage>(this.baseUrl + "/Village/UpdateVillage", updateVillage)
  }

  deleteVillage(VillageId: string) {
    return this.http.delete<ResponseMessage>(this.baseUrl + `/Village/DeleteVillage?VillageId=${VillageId}`)

  }

//BillCycle

getBillCycle() {
  return this.http.get<IBillCycleGetDto[]>(this.baseUrl + "/BillCycle/GetBillCycle")
}
addBillCycle(addBillCycle: IBillCyclePostDto) {
  addBillCycle.createdById = this.userService.getCurrentUser().userId
  return this.http.post<ResponseMessage>(this.baseUrl + "/BillCycle/AddBillCycle", addBillCycle)
}
updateBillCycle(updateBillCycle: IBillCycleGetDto) {
  return this.http.put<ResponseMessage>(this.baseUrl + "/BillCycle/UpdateBillCycle", updateBillCycle)
}

deleteBillCycle(BillCycleId: string) {
  return this.http.delete<ResponseMessage>(this.baseUrl + `/BillCycle/DeleteBillCycle?BillCycleId=${BillCycleId}`)

}
//MeterDigit
getMeterDigit() {
  return this.http.get<IMeterDigitGetDto[]>(this.baseUrl + "/MeterDigit/GetMeterDigit")
}
addMeterDigit(addMeterDigit: IMeterDigitPostDto) {
  addMeterDigit.createdById = this.userService.getCurrentUser().userId
  return this.http.post<ResponseMessage>(this.baseUrl + "/MeterDigit/AddMeterDigit", addMeterDigit)
}
updateMeterDigit(updateMeterDigit: IMeterDigitGetDto) {
  return this.http.put<ResponseMessage>(this.baseUrl + "/MeterDigit/UpdateMeterDigit", updateMeterDigit)
}

deleteMeterDigit(MeterDigitId: string) {
  return this.http.delete<ResponseMessage>(this.baseUrl + `/MeterDigit/DeleteMeterDigit?MeterDigitId=${MeterDigitId}`)

}//MeterModel
getMeterModel() {
  return this.http.get<IMeterModelGetDto[]>(this.baseUrl + "/MeterModel/GetMeterModel")
}
addMeterModel(addMeterModel: IMeterModelPostDto) {
  addMeterModel.createdById = this.userService.getCurrentUser().userId
  return this.http.post<ResponseMessage>(this.baseUrl + "/MeterModel/AddMeterModel", addMeterModel)
}
updateMeterModel(updateMeterModel: IMeterModelGetDto) {
  return this.http.put<ResponseMessage>(this.baseUrl + "/MeterModel/UpdateMeterModel", updateMeterModel)
}

deleteMeterModel(MeterModelId: string) {
  return this.http.delete<ResponseMessage>(this.baseUrl + `/MeterModel/DeleteMeterModel?MeterModelId=${MeterModelId}`)

}
//MeterType
getMeterType() {
  return this.http.get<IMeterTypeGetDto[]>(this.baseUrl + "/MeterType/GetMeterType")
}
addMeterType(addMeterType: IMeterTypePostDto) {
  addMeterType.createdById = this.userService.getCurrentUser().userId
  return this.http.post<ResponseMessage>(this.baseUrl + "/MeterType/AddMeterType", addMeterType)
}
updateMeterType(updateMeterType: IMeterTypeGetDto) {
  return this.http.put<ResponseMessage>(this.baseUrl + "/MeterType/UpdateMeterType", updateMeterType)
}

deleteMeterType(MeterTypeId: string) {
  return this.http.delete<ResponseMessage>(this.baseUrl + `/MeterType/DeleteMeterType?MeterTypeId=${MeterTypeId}`)

}
//MeterClass
getMeterClass() {
  return this.http.get<IMeterClassGetDto[]>(this.baseUrl + "/MeterClass/GetMeterClass")
}
addMeterClass(addMeterClass: IMeterClassPostDto) {
  addMeterClass.createdById = this.userService.getCurrentUser().userId
  return this.http.post<ResponseMessage>(this.baseUrl + "/MeterClass/AddMeterClass", addMeterClass)
}
updateMeterClass(updateMeterClass: IMeterClassGetDto) {
  return this.http.put<ResponseMessage>(this.baseUrl + "/MeterClass/UpdateMeterClass", updateMeterClass)
}

deleteMeterClass(MeterClassId: string) {
  return this.http.delete<ResponseMessage>(this.baseUrl + `/MeterClass/DeleteMeterClass?MeterClassId=${MeterClassId}`)

}
}