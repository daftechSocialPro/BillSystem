import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { IEmployeeGetDto } from 'src/models/hrm/IEmployeeDto';
import { IMeterSizeGetDto, IMeterSizePostDto } from 'src/models/system-control/IMeterSizeDto';
import { UserService } from '../user.service';
import { ResponseMessage } from 'src/models/ResponseMessage.Model';
import { ICustomerCategoryGetDto, ICustomerCategoryPostDto } from 'src/models/system-control/ICustomerCategoryDto';
import { IVillageGetDto, IVillagePostDto } from 'src/models/system-control/IVillageDto';

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


}
