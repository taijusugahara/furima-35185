function item (){
  const price = document.getElementById("item-price");
  const tax = document.getElementById("add-tax-price");
  const profit = document.getElementById("profit");
  price.addEventListener("input", () => {
    let item_price = price.value;
    tax.innerHTML = item_price * 0.1;
    profit.innerHTML = item_price * 0.9;

  
  });



}
 window.addEventListener('load', item);
