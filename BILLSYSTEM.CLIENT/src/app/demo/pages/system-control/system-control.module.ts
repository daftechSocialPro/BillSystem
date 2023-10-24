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
import { BillCycleComponent } from './scs-data/meter/bill-cycle/bill-cycle.component';
import { AddBillCycleComponent } from './scs-data/meter/bill-cycle/add-bill-cycle/add-bill-cycle.component';
import { MeterDigitComponent } from './scs-data/meter/meter-digit/meter-digit.component';
import { AddMeterDigitComponent } from './scs-data/meter/meter-digit/add-meter-digit/add-meter-digit.component';
import { MeterModelComponent } from './scs-data/meter/meter-model/meter-model.component';
import { AddMeterModelComponent } from './scs-data/meter/meter-model/add-meter-model/add-meter-model.component';
import { MeterTypeComponent } from './scs-data/meter/meter-type/meter-type.component';
import { AddMeterTypeComponent } from './scs-data/meter/meter-type/add-meter-type/add-meter-type.component';
import { MeterClassComponent } from './scs-data/meter/meter-class/meter-class.component';
import { AddMeterClassComponent } from './scs-data/meter/meter-class/add-meter-class/add-meter-class.component';



@NgModule({
  

  declarations: [
    MeterSizeComponent,
    ScsDataComponent,
    MeterConfigComponent,
    AddMeterSizeComponent,
    AddCustomerCategoryComponent,
    CustomerCategoryComponent,
    VillageComponent,
    AddVillageComponent,
    BillCycleComponent,
    AddBillCycleComponent,
    MeterDigitComponent,
    AddMeterDigitComponent,
    MeterModelComponent,
    AddMeterModelComponent,
    MeterTypeComponent,
    AddMeterTypeComponent,
    MeterClassComponent,
    AddMeterClassComponent
    
  ],
  imports: [
    CommonModule,SystemControlRoutingModule,SharedModule,TableModule,TabViewModule,FormsModule,ReactiveFormsModule
  ]
})
export class SystemControlModule { }
