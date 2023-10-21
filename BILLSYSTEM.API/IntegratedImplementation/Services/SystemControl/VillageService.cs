using AutoMapper;
using AutoMapper.QueryableExtensions;
using Implementation.Helper;
using IntegratedImplementation.DTOS.SystemControl;
using IntegratedImplementation.Interfaces.SystemControl;
using IntegratedInfrustructure.Data;
using IntegratedInfrustructure.Model.SCS;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedImplementation.Services.SystemControl
{
    public class VillageService :IVillageService

    { 

    private readonly ApplicationDbContext _dbContext;
    private readonly IMapper _mapper;

    public VillageService(ApplicationDbContext dbContext, IMapper mapper)
    {
        _mapper = mapper;
        _dbContext = dbContext;
    }


    public async Task<List<VillageGetDto>> GetVillage()
    {
        var employeeHistories = await _dbContext.Villages.AsNoTracking()
                            .ProjectTo<VillageGetDto>(_mapper.ConfigurationProvider)
                            .ToListAsync();
        return employeeHistories;
    }
    public async Task<ResponseMessage> AddVillage(VillagePostDto addVillage)
    {
        try
        {

            Village village = new Village()
            {
                Id = Guid.NewGuid(),
                CreatedById = addVillage.CreatedById,
                CreatedDate = DateTime.Now,
                Name = addVillage.Name

            };
            await _dbContext.Villages.AddAsync(village);
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
    public async Task<ResponseMessage> UpdateVillage(VillageGetDto updateVillage)
    {
        try
        {
            var currentVillage = await _dbContext.Villages.FirstOrDefaultAsync(x => x.Id.Equals(updateVillage.Id));

            if (currentVillage != null)
            {

                
                currentVillage.Name = updateVillage.Name;

                await _dbContext.SaveChangesAsync();
                return new ResponseMessage { Message = "Successfully Updated", Success = true };
            }
            return new ResponseMessage { Success = false, Message = "Unable To Find Village" };
        }
        catch (Exception ex)
        {
            return new ResponseMessage
            {

                Message = "Cannot insert duplicate key for Input Field Name ",
                Success = false
            };
        }

    }
    public async Task<ResponseMessage> DeleteVillage(Guid VillageId)
    {

        var currentVillage = await _dbContext.Villages.FindAsync(VillageId);

        if (currentVillage != null)
        {

            _dbContext.Remove(currentVillage);
            await _dbContext.SaveChangesAsync();
            return new ResponseMessage { Message = "Successfully Deleted", Success = true };
        }
        return new ResponseMessage { Success = false, Message = "Unable To Find Village" };
    }

}

    
}
