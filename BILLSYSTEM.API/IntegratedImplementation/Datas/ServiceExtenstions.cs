using Implementation.Interfaces.Authentication;
using Implementation.Services.Authentication;
using IntegratedImplementation.Interfaces.Configuration;
using IntegratedImplementation.Interfaces.HRM;
using IntegratedImplementation.Interfaces.SystemControl;
using IntegratedImplementation.Services.Configuration;
using IntegratedImplementation.Services.HRM;
using IntegratedImplementation.Services.SystemControl;
using Microsoft.Extensions.DependencyInjection;

namespace IntegratedImplementation.Datas
{
    public static class ServiceExtenstions
    {
        public static IServiceCollection AddCoreBusiness(this IServiceCollection services)
        {
            services.AddScoped<IAuthenticationService, AuthenticationService>();
            //hrm services 
         
            services.AddScoped<IGeneralConfigService, GeneralConfigService>();
            services.AddScoped<IEmployeeService, EmployeeService>();

            #region System-control

            services.AddScoped<IMeterSizeService, MeterSizeService>();
            services.AddScoped<ICustomerCategoryService, CustomerCategoryService>();
            services.AddScoped<IVillageService, VillageService>();
          


            #endregion

            return services;
        }
    }
}
