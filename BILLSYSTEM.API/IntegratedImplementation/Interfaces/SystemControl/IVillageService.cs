using Implementation.Helper;
using IntegratedImplementation.DTOS.SystemControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedImplementation.Interfaces.SystemControl
{
    public interface IVillageService
    {
        Task<List<VillageGetDto>> GetVillage();
        Task<ResponseMessage> AddVillage(VillagePostDto addVillage);
        Task<ResponseMessage> UpdateVillage(VillageGetDto updateVillage);
        Task<ResponseMessage> DeleteVillage(Guid VillageId);
    }
}
