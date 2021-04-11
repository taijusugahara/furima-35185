if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
function preview (){
  const ImageList = document.getElementById('image-list');
  console.log(ImageList)
  const createImageHTML = (url) => {
    const DivElement = document.createElement('div');
    DivElement.setAttribute('class', "image-element");
    let imageElementNum = document.querySelectorAll('.image-element').length;
    const ImageElement = document.createElement('img');
    ImageElement.setAttribute('src', url);

    const inputHTML = document.createElement('input');
    inputHTML.setAttribute('id', `item_image_${imageElementNum}`);
    inputHTML.setAttribute('name', 'item[images][]');
    inputHTML.setAttribute('type', 'file');

    DivElement.appendChild(ImageElement);
    DivElement.appendChild(inputHTML);
    ImageList.appendChild(DivElement);

    inputHTML.addEventListener('change', (e) => {
      file = e.target.files[0];
      url = window.URL.createObjectURL(file);

      createImageHTML(url)
    })
  };
  document.getElementById("item-image").addEventListener('change', function(e){
   
    const file = e.target.files[0];
    const url = window.URL.createObjectURL(file);

   
    createImageHTML(url);
  });

  

};

window.addEventListener('load', preview);
}