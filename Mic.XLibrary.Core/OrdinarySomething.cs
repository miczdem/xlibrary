using System.Diagnostics;
using Mic.XLibrary.Core.Interfaces;

namespace Mic.XLibrary.Core
{
    public class OrdinarySomething:ISomething

    {
        public void SomeMethod()
        {
            Debug.WriteLine("Some");
        }
    }
}
