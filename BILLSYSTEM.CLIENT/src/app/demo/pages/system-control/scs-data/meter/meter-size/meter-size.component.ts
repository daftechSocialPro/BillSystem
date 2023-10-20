import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { ScsDataService } from 'src/app/services/system-control/scs-data.service';
import { IMeterSizeGetDto } from 'src/models/system-control/IMeterSizeDto';
import { AddMeterSizeComponent } from './add-meter-size/add-meter-size.component';
import { ConfirmEventType, ConfirmationService, MessageService } from 'primeng/api';

@Component({
  selector: 'app-meter-size',
  templateUrl: './meter-size.component.html',
  styleUrls: ['./meter-size.component.scss']
})
export class MeterSizeComponent implements OnInit {

  meterSizes:IMeterSizeGetDto[]
  ngOnInit(): void {

    this.getMeterSizes()
    
  }

  constructor(
    private modalService : NgbModal,
    private confirmationService: ConfirmationService,
    private messageService : MessageService,
    private controlService:ScsDataService){}


  getMeterSizes(){

    this.controlService.getMeterSize().subscribe({
      next:(res)=>{
        this.meterSizes = res 
      }
    })
  }

  addMeterSize(){


    let modalRef = this.modalService.open(AddMeterSizeComponent,  {size:'lg',backdrop:'static'})

    modalRef.result.then(()=>{
      this.getMeterSizes()
    })

  }

  removeMeterSize(meterSizeId:string) {

    console.log(meterSizeId)
    this.confirmationService.confirm({
      message: 'Are You sure you want to delete this Meter Size?',
      header: 'Delete Confirmation',
      icon: 'pi pi-info-circle',
      accept: () => {
        this.controlService.deleteMeterSize(meterSizeId).subscribe({
          next: (res) => {

            if (res.success) {
              this.messageService.add({ severity: 'success', summary: 'Confirmed', detail: res.message });
              this.getMeterSizes()
            }
            else {
              this.messageService.add({ severity: 'error', summary: 'Rejected', detail: res.message });
            }
          }, error: (err) => {

            this.messageService.add({ severity: 'error', summary: 'Rejected', detail: err });


          }
        })

      },
      reject: (type: ConfirmEventType) => {
        switch (type) {
          case ConfirmEventType.REJECT:
            this.messageService.add({ severity: 'error', summary: 'Rejected', detail: 'You have rejected' });
            break;
          case ConfirmEventType.CANCEL:
            this.messageService.add({ severity: 'warn', summary: 'Cancelled', detail: 'You have cancelled' });
            break;
        }
      },
      key: 'positionDialog'
    });

  }

  
  updateMeterSize(meterSize:IMeterSizeGetDto){


    let modalRef = this.modalService.open(AddMeterSizeComponent,  {size:'lg',backdrop:'static'})

    modalRef.componentInstance.meterSize=meterSize

    modalRef.result.then(()=>{
      this.getMeterSizes()
    })

  }
}
