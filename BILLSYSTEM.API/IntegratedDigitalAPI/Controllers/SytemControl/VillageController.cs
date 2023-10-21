using Implementation.Helper;
using IntegratedImplementation.DTOS.SystemControl;
using IntegratedImplementation.Interfaces.SystemControl;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace IntegratedDigitalAPI.Controllers.SytemControl
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class VillageController : ControllerBase
    {

        private readonly IVillageService _VillageService;


        public VillageController(IVillageService VillageService)
        {
            _VillageService = VillageService;

        }

        [HttpGet]
        [ProducesResponseType(typeof(VillageGetDto), (int)HttpStatusCode.OK)]
        public async Task<IActionResult> GetVillage()
        {
            return Ok(await _VillageService.GetVillage());
        }

        [HttpPost]
        [ProducesResponseType(typeof(ResponseMessage), (int)HttpStatusCode.OK)]
        public async Task<IActionResult> AddVillage(VillagePostDto addVillage)
        {
            if (ModelState.IsValid)
            {
                return Ok(await _VillageService.AddVillage(addVillage));
            }
            else
            {
                return BadRequest();
            }
        }
        [HttpPut]
        [ProducesResponseType(typeof(ResponseMessage), (int)HttpStatusCode.OK)]
        public async Task<IActionResult> UpdateVillage(VillageGetDto updateVillage)
        {
            if (ModelState.IsValid)
            {
                return Ok(await _VillageService.UpdateVillage(updateVillage));
            }
            else
            {
                return BadRequest();
            }
        }
        [HttpDelete]
        [ProducesResponseType(typeof(ResponseMessage), (int)HttpStatusCode.OK)]
        public async Task<IActionResult> DeleteVillage(Guid VillageId)
        {
            if (ModelState.IsValid)
            {
                return Ok(await _VillageService.DeleteVillage(VillageId));
            }
            else
            {
                return BadRequest();
            }
        }

    }
}
