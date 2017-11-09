using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using BSUNetworkMonitorWebpage.Models;

namespace BSUNetworkMonitorWebpage.DAL
{
    public class NetworkDataContext : DbContext
    {
        public NetworkDataContext() : base("NetworkDataContext")
        {
        }

        public DbSet<Monitor> Monitors { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }

}