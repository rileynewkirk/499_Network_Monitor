using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BSUNetworkMonitorWebpage.Startup))]
namespace BSUNetworkMonitorWebpage
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
