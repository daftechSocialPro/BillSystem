import { Component, Input, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { MessageService } from 'primeng/api';
import { ScsDataService } from 'src/app/services/system-control/scs-data.service';
import { IMeterDigitGetDto, IMeterDigitPostDto } from 'src/models/system-control/IMeterDigitDto';

@Component({
  selector: 'app-add-meter-digit',
  templateUrl: './add-meter-digit.component.html',
  styleUrls: ['./add-meter-digit.component.scss']
})
export class AddMeterDigitComponent implements OnInit {

  @Input() MeterDigit: IMeterDigitGetDto
  MeterDigitForm!: FormGroup;
  constructor(
    private activeModal : NgbActiveModal,
    private messageService: MessageService,
    private controlService : ScsDataService,
    private formBuilder:FormBuilder){}

  ngOnInit(): void {

    if(this.MeterDigit){
      this.MeterDigitForm = this.formBuilder.group({
    
        digit: [this.MeterDigit.digit, Validators.required],
      
      })
    }
    else{
      this.MeterDigitForm = this.formBuilder.group({
     
        digit: ['', Validators.required],
      
      })
    }
    
  
}

submit(){

  if(  this.MeterDigitForm.valid){

    let addMeterDigit : IMeterDigitPostDto={
      digit : this.MeterDigitForm.value.digit,
    }

    this.controlService.addMeterDigit(addMeterDigit).subscribe({
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
  if(  this.MeterDigitForm.valid){

    let addMeterDigit : IMeterDigitGetDto={
      digit : this.MeterDigitForm.value.digit,
      
      id:this.MeterDigit.id
    }

    this.controlService.updateMeterDigit(addMeterDigit).subscribe({
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
}{

}
