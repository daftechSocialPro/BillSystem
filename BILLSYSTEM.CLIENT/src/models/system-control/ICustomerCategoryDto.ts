export interface ICustomerCategoryGetDto {

    id: string
    code: number
    name: string
}
export interface ICustomerCategoryPostDto {


    code: number
    name: string
    createdById?: string
}

