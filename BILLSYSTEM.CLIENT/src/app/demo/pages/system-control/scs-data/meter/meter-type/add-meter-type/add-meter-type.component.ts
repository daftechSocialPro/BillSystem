import { Component, Input, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { MessageService } from 'primeng/api';
import { ScsDataService } from 'src/app/services/system-control/scs-data.service';
import { IMeterTypeGetDto, IMeterTypePostDto } from 'src/models/system-control/IMeterTypeDto';

@Component({
  selector: 'app-add-meter-type',
  templateUrl: './add-meter-type.component.html',
  styleUrls: ['./add-meter-type.component.scss']
})
export class AddMeterTypeComponent implements OnInit {

  @Input() MeterType: IMeterTypeGetDto
  MeterTypeForm!: FormGroup;
  constructor(
    private activeModal : NgbActiveModal,
    private messageService: MessageService,
    private controlService : ScsDataService,
    private formBuilder:FormBuilder){}

  ngOnInit(): void {

    if(this.MeterType){
      this.MeterTypeForm = this.formBuilder.group({
    
        name: [this.MeterType.name, Validators.required],
      
      })
    }
    else{
      this.MeterTypeForm = this.formBuilder.group({
     
        name: ['', Validators.required],
      
      })
    }
    
  
}

submit(){

  if(  this.MeterTypeForm.valid){

    let addMeterType : IMeterTypePostDto={
      name : this.MeterTypeForm.value.name,
    }

    this.controlService.addMeterType(addMeterType).subscribe({
      next:(res)=>{

        if (res.success){
          this.messageService.add({ severity: 'success', summary: 'Successfull', detail:res.message });
          
          this.closeModal()

        }else {
          this.messageService.add({ severity: 'error', summary: 'Something went Wrong', detail:res.message });

        }

      },error:(err)=>{
        this.messageService.add({ severity: 'error', summary: 'Something went Wrong', detail:err.message });

      }
    })


  }
  else {


  }
}

update(){
  if(  this.MeterTypeForm.valid){

    let addMeterType : IMeterTypeGetDto={
      name : this.MeterTypeForm.value.name,
      
      id:this.MeterType.id
    }

    this.controlService.updateMeterType(addMeterType).subscribe({
      next:(res)=>{

        if (res.success){
          this.messageService.add({ severity: 'success', summary: 'Successfull', detail:res.message });
          
          this.closeModal()

        }else {
          this.messageService.add({ severity: 'error', summary: 'Something went Wrong', detail:res.message });

        }

      },error:(err)=>{
        this.messageService.add({ severity: 'error', summary: 'Something went Wrong', detail:err.message });

      }
    })


  }
  else {


  }

}

closeModal(){

  this.activeModal.close()

}
}
  


