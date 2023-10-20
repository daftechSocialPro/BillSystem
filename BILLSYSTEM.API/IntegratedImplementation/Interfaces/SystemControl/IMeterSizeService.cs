using Implementation.Helper;
using IntegratedImplementation.DTOS.SystemControl;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedImplementation.Interfaces.SystemControl
{
    public interface IMeterSizeService
    {

        Task<List<MeterSizeGetDto>> GetMeterSize();
        Task<ResponseMessage> AddMeterSize(MeterSizePostDto addMeterSize);
        Task<ResponseMessage> UpdateMeterSize(MeterSizeGetDto updateMeterSize);
        Task<ResponseMessage> DeleteMeterSize(Guid MeterSizeId);
    }
}
