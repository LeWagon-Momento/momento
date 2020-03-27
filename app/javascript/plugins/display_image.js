// function readURL(input) {
//         if (input.files && input.files[0]) {
//             var reader = new FileReader();

//             reader.onload = function (e) {
//                 $('#blah')
//                     .attr('src', e.target.result)
//                     .width(150)
//                     .height(200);
//             };

//             reader.readAsDataURL(input.files[0]);
//         }
//     }

// convert image to base64 (string that represents the image)
const toBase64 = file => new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = () => resolve(reader.result);
    reader.onerror = error => reject(error);
});



// adds image to div in new post form
const readURL = () => {
  const imageFile = document.getElementById('display-image')
  if (imageFile) {
    imageFile.addEventListener('change', (event) => {
      async function Main () {
        const targetFile = document.getElementById('display-image').files[0];
        const baseString = await toBase64(targetFile);
        console.log(baseString);
        const divImage = document.getElementById('image-one-full');
        divImage.insertAdjacentHTML('afterbegin', `<img src="${baseString}" alt="your image" width="100%" />`);
        document.getElementById("no-image").remove();
      }
      Main()
    })
  }
}




export { readURL };
