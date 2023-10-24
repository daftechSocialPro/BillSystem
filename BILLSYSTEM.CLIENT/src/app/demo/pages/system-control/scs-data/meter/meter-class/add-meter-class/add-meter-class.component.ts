import { Component, Input, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { MessageService } from 'primeng/api';
import { ScsDataService } from 'src/app/services/system-control/scs-data.service';
import { IMeterClassGetDto, IMeterClassPostDto } from 'src/models/system-control/IMeterClassDto';

@Component({
  selector: 'app-add-meter-class',
  templateUrl: './add-meter-class.component.html',
  styleUrls: ['./add-meter-class.component.scss']
})
export class AddMeterClassComponent implements OnInit {

  @Input() MeterClass: IMeterClassGetDto
  MeterClassForm!: FormGroup;
  constructor(
    private activeModal : NgbActiveModal,
    private messageService: MessageService,
    private controlService : ScsDataService,
    private formBuilder:FormBuilder){}

  ngOnInit(): void {

    if(this.MeterClass){
      this.MeterClassForm = this.formBuilder.group({
    
        name: [this.MeterClass.name, Validators.required],
      
      })
    }
    else{
      this.MeterClassForm = this.formBuilder.group({
     
        name: ['', Validators.required],
      
      })
    }
    
  
}

submit(){

  if(  this.MeterClassForm.valid){

    let addMeterClass : IMeterClassPostDto={
      name : this.MeterClassForm.value.name,
    }

    this.controlService.addMeterClass(addMeterClass).subscribe({
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
  if(  this.MeterClassForm.valid){

    let addMeterClass : IMeterClassGetDto={
      name : this.MeterClassForm.value.name,
      
      id:this.MeterClass.id
    }

    this.controlService.updateMeterClass(addMeterClass).subscribe({
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
