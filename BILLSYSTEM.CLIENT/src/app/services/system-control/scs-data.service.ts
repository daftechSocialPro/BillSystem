import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { IEmployeeGetDto } from 'src/models/hrm/IEmployeeDto';
import { IMeterSizeGetDto, IMeterSizePostDto } from 'src/models/system-control/IMeterSizeDto';
import { UserService } from '../user.service';
import { ResponseMessage } from 'src/models/ResponseMessage.Model';

@Injectable({
  providedIn: 'root'
})
export class ScsDataService {
  constructor(private http: HttpClient,private userService : UserService) { }
  readonly baseUrl = environment.baseUrl;


  //meter-size
  getMeterSize() {
    return this.http.get<IMeterSizeGetDto[]>(this.baseUrl + "/MeterSize/GetMeterSize")
  }
  addMeterSize(addMeterSize:IMeterSizePostDto){

    addMeterSize.createdById = this.userService.getCurrentUser().userId

    return this.http.post<ResponseMessage>(this.baseUrl + "/MeterSize/AddMeterSize",addMeterSize)


  }
  updateMeterSize(updateMeterSize:IMeterSizeGetDto){
    return this.http.put<ResponseMessage>(this.baseUrl + "/MeterSize/UpdateMeterSize",updateMeterSize)
  }
  
  deleteMeterSize(meterSizeId:string){
    return this.http.delete<ResponseMessage>(this.baseUrl + `/MeterSize/DeleteMeterSize?meterSizeId=${meterSizeId}`)

  }



}
