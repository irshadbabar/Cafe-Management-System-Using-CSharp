using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CafeManagementSystem.CMS_Core
{
    public class FoodMenuItem
    {
        public FoodMenuItem()
        {
            menuItemCategory = new ItemCategory();
        }

        public int id { get; set; }
        public string itemName { get; set; }
        public string itemIngredients { get; set; }
        public string itemImageUrl { get; set; }

        public float itemPrice { get; set; }
        public ItemCategory menuItemCategory { get; set; }
    }
}