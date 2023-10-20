using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedImplementation.DTOS.SystemControl
{
    public class MeterSizeGetDto
    {

        public Guid Id { get; set; }
        public int Code { get; set; }
        public string Name { get; set; }
    }

    public class MeterSizePostDto
    {

        public int Code { get; set; }
        public string Name { get; set; }

        public string CreatedById { get; set; }
    }
}
