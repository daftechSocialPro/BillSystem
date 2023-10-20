﻿using IntegratedInfrustructure.Model.Authentication;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntegratedInfrustructure.Model.SRC
{
    public class CustomerCategory :WithIdModel
    {
        public int Code { get; set; }
        public string Name { get; set; }
    }
}
