using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BSUNetworkMonitorWebpage.Models
{
    public class Monitor
    {
        public int ID { get; set; }
        public string MacAddress { get; set; }
        public string Time { get; set; }
        public string IPAddress { get; set; }
        public string Switch { get; set; }
        public string Port { get; set; }
        public string ExternalIP { get; set; }
        public string DNS { get; set; }
        public string Username { get; set; }
        public string WirelessController { get; set; }
        public string AccessPoint { get; set; }
        public string DescriptionForWired { get; set; }
    }
}