import { Component, Input, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { MessageService } from 'primeng/api';
import { ScsDataService } from 'src/app/services/system-control/scs-data.service';
import { ICustomerCategoryGetDto, ICustomerCategoryPostDto } from 'src/models/system-control/ICustomerCategoryDto';

@Component({
  selector: 'app-add-customer-category',
  templateUrl: './add-customer-category.component.html',
  styleUrls: ['./add-customer-category.component.scss']
})
export class AddCustomerCategoryComponent implements OnInit {

  @Input() CustomerCategory: ICustomerCategoryGetDto
  CustomerCategoryForm!: FormGroup;
  constructor(
    private activeModal : NgbActiveModal,
    private messageService: MessageService,
    private controlService : ScsDataService,
    private formBuilder:FormBuilder){}

  ngOnInit(): void {

    if(this.CustomerCategory){
      this.CustomerCategoryForm = this.formBuilder.group({
        code : [this.CustomerCategory.code,Validators.required],
        name: [this.CustomerCategory.name, Validators.required],
      
      })
    }
    else{
      this.CustomerCategoryForm = this.formBuilder.group({
        code : ['',Validators.required],
        name: ['', Validators.required],
      
      })
    }
    
  
}

submit(){

  if(  this.CustomerCategoryForm.valid){

    let addCustomerCategory : ICustomerCategoryPostDto={
      name : this.CustomerCategoryForm.value.name,
      code : this.CustomerCategoryForm.value.code
    }

    this.controlService.addCustomerCategory(addCustomerCategory).subscribe({
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
  if(  this.CustomerCategoryForm.valid){

    let addCustomerCategory : ICustomerCategoryGetDto={
      name : this.CustomerCategoryForm.value.name,
      code : this.CustomerCategoryForm.value.code,
      id:this.CustomerCategory.id
    }

    this.controlService.updateCustomerCategory(addCustomerCategory).subscribe({
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