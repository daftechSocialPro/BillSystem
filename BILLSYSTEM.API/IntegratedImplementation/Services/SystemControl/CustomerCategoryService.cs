using AutoMapper;
using AutoMapper.QueryableExtensions;
using Implementation.Helper;
using IntegratedImplementation.DTOS.SystemControl;
using IntegratedImplementation.Interfaces.SystemControl;
using IntegratedInfrustructure.Data;
using IntegratedInfrustructure.Model.SRC;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedImplementation.Services.SystemControl
{
    public class CustomerCategoryService : ICustomerCategoryService
    {


        private readonly ApplicationDbContext _dbContext;
        private readonly IMapper _mapper;

        public CustomerCategoryService(ApplicationDbContext dbContext, IMapper mapper)
        {
            _mapper = mapper;
            _dbContext = dbContext;
        }


        public async Task<List<CustomerCategoryGetDto>> GetCustomerCategory()
        {
            var employeeHistories = await _dbContext.CustomerCategories.AsNoTracking()
                                .ProjectTo<CustomerCategoryGetDto>(_mapper.ConfigurationProvider)
                                .ToListAsync();
            return employeeHistories;
        }
        public async Task<ResponseMessage> AddCustomerCategory(CustomerCategoryPostDto addCustomerCategory)
        {
            try
            {

                CustomerCategory CustomerCategory = new CustomerCategory()
                {
                    Id = Guid.NewGuid(),
                    CreatedById = addCustomerCategory.CreatedById,
                    CreatedDate = DateTime.Now,
                    Name = addCustomerCategory.Name,
                    Code = addCustomerCategory.Code,



                };
                await _dbContext.CustomerCategories.AddAsync(CustomerCategory);
                await _dbContext.SaveChangesAsync();

                return new ResponseMessage
                {

                    Message = "Added Successfully",
                    Success = true
                };
            }
            catch (Exception ex)
            {
                return new ResponseMessage
                {

                    Message = "Cannot insert duplicate key for Input Field code ",
                    Success = false
                };

            }


        }
        public async Task<ResponseMessage> UpdateCustomerCategory(CustomerCategoryGetDto updateCustomerCategory)
        {
            try
            {
                var currentCustomerCategory = await _dbContext.CustomerCategories.FirstOrDefaultAsync(x => x.Id.Equals(updateCustomerCategory.Id));

                if (currentCustomerCategory != null)
                {

                    currentCustomerCategory.Code = updateCustomerCategory.Code;
                    currentCustomerCategory.Name = updateCustomerCategory.Name;



                    await _dbContext.SaveChangesAsync();
                    return new ResponseMessage { Message = "Successfully Updated", Success = true };
                }
                return new ResponseMessage { Success = false, Message = "Unable To Find Customer Category" };
            }
            catch (Exception ex)
            {
                return new ResponseMessage
                {

                    Message = "Cannot insert duplicate key for Input Field code ",
                    Success = false
                };

            }

        }
        public async Task<ResponseMessage> DeleteCustomerCategory(Guid CustomerCategoryId)
        {

            var currentCustomerCategory = await _dbContext.CustomerCategories.FindAsync(CustomerCategoryId);

            if (currentCustomerCategory != null)
            {

                _dbContext.Remove(currentCustomerCategory);
                await _dbContext.SaveChangesAsync();
                return new ResponseMessage { Message = "Successfully Deleted", Success = true };
            }
            return new ResponseMessage { Success = false, Message = "Unable To Find Customer Category" };
        }

    }
}

