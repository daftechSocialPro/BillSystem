export interface IBillCycleGetDto {

    id: string
   
    bookNumber: string
}
export interface IBillCyclePostDto {    
    bookNumber: string
    createdById?: string
}


