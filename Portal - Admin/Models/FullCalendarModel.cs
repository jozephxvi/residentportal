﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ResComm.Web.Models
{
    public class FullCalendarModel
    {
        public long id { get; set; }
        public string title { get; set; }
        public string start { get; set; }
        public string end { get; set; }
    }
}