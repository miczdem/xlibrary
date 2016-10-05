using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mic.TestLibrary.Core.Interfaces;

namespace Mic.TestLibrary.Core
{
    public class OrdinarySomething:ISomething

    {
        public void SomeMethod()
        {
            Debug.WriteLine("Some");
        }
    }
}
