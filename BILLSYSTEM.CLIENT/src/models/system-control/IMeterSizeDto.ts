export interface IMeterSizeGetDto {

    id: string
    code: number
    name: string
}
export interface IMeterSizePostDto {


    code: number
    name: string
    createdById?: string
}


