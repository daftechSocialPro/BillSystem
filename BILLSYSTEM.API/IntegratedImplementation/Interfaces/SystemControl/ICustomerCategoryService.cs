using Implementation.Helper;
using IntegratedImplementation.DTOS.SystemControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedImplementation.Interfaces.SystemControl
{
    public interface ICustomerCategoryService
    {

        Task<List<CustomerCategoryGetDto>> GetCustomerCategory();
        Task<ResponseMessage> AddCustomerCategory(CustomerCategoryPostDto addCustomerCategory);
        Task<ResponseMessage> UpdateCustomerCategory(CustomerCategoryGetDto updateCustomerCategory);
        Task<ResponseMessage> DeleteCustomerCategory(Guid CustomerCategoryId);
    }
}
