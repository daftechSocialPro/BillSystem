import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SystemControlRoutingModule } from './system-control-routing.module';
import { MeterSizeComponent } from './scs-data/meter/meter-size/meter-size.component';
import ScsDataComponent from './scs-data/scs-data.component';
import { SharedModule } from 'primeng/api';
import { TableModule } from 'primeng/table';
import { TabViewModule } from 'primeng/tabview';
import { MeterConfigComponent } from './scs-data/meter/meter-config.component';
import { AddMeterSizeComponent } from './scs-data/meter/meter-size/add-meter-size/add-meter-size.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AddCustomerCategoryComponent } from './scs-data/customer-category/add-customer-category/add-customer-category.component';
import { CustomerCategoryComponent } from './scs-data/customer-category/customer-category.component';
import { VillageComponent } from './scs-data/meter/village/village.component';
import { AddVillageComponent } from './scs-data/meter/village/add-village/add-village.component';



@NgModule({
  

  declarations: [
    MeterSizeComponent,
    ScsDataComponent,
    MeterConfigComponent,
    AddMeterSizeComponent,
    AddCustomerCategoryComponent,
    CustomerCategoryComponent,
    VillageComponent,
    AddVillageComponent
    
  ],
  imports: [
    CommonModule,SystemControlRoutingModule,SharedModule,TableModule,TabViewModule,FormsModule,ReactiveFormsModule
  ]
})
export class SystemControlModule { }
