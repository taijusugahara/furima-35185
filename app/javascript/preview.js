if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
function preview (){
  const ImageList = document.getElementById('image-list');
  
  const createImageHTML = (abc) => {
  const DivElement = document.createElement('div');
  const ImageElement = document.createElement('img');
  ImageElement.setAttribute('src', url);

  DivElement.appendChild(ImageElement);
  ImageList.appendChild(DivElement);
  };
  document.getElementById("item-image").addEventListener('change', function(e){
    const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }
    const file = e.target.files[0];
    const url = window.URL.createObjectURL(file);

    // 画像を表示するためのdiv要素を生成
    const DivElement = document.createElement('div');

    // 表示する画像を生成
    const ImageElement = document.createElement('img');
    ImageElement.setAttribute('src', url);

    DivElement.appendChild(ImageElement);
    ImageList.appendChild(DivElement);
    createImageHTML(abc);
  });

  

};

window.addEventListener('load', preview);
}