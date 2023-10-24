import { Component, Input, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { MessageService } from 'primeng/api';
import { ScsDataService } from 'src/app/services/system-control/scs-data.service';
import { IMeterModelGetDto, IMeterModelPostDto } from 'src/models/system-control/IMeterModelDto';

@Component({
  selector: 'app-add-meter-model',
  templateUrl: './add-meter-model.component.html',
  styleUrls: ['./add-meter-model.component.scss']
})
export class AddMeterModelComponent implements OnInit {

  @Input() MeterModel: IMeterModelGetDto
  MeterModelForm!: FormGroup;
  constructor(
    private activeModal : NgbActiveModal,
    private messageService: MessageService,
    private controlService : ScsDataService,
    private formBuilder:FormBuilder){}

  ngOnInit(): void {

    if(this.MeterModel){
      this.MeterModelForm = this.formBuilder.group({
    
        name: [this.MeterModel.name, Validators.required],
      
      })
    }
    else{
      this.MeterModelForm = this.formBuilder.group({
     
        name: ['', Validators.required],
      
      })
    }
    
  
}

submit(){

  if(  this.MeterModelForm.valid){

    let addMeterModel : IMeterModelPostDto={
      name : this.MeterModelForm.value.name,
    }

    this.controlService.addMeterModel(addMeterModel).subscribe({
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
  if(  this.MeterModelForm.valid){

    let addMeterModel : IMeterModelGetDto={
      name : this.MeterModelForm.value.name,
      
      id:this.MeterModel.id
    }

    this.controlService.updateMeterModel(addMeterModel).subscribe({
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



