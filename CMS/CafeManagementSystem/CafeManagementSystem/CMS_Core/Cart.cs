using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CafeManagementSystem.CMS_Core
{
    public class Cart
    {
        public Cart()
        {

        }

        public int itemId { get; set; }

        public string dishName { get; set; }

        public int quantity { get; set; }

        public float price { get; set; }

        public float unitPrice { get; set; }
    }
}