using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Generics
{
   public interface ItemType<T,V>: Category<T,V>
    {
         string ItemName
        {
            get;
            set;
        }

         int ItemPrice
        {
            get;
            set;
        }


    }

    public interface Category<T,V>:Base<T,V>
    {
           string CategoryName
        {
            get;
            set;
        }
        

    }
}
