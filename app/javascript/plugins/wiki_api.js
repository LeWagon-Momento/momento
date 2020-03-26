const wikiApi = () => {
  if(search) {
    search.addEventListener('click', (event) => {
      let searchValue = document.querySelector('#search')
      console.log(searchValue.value);
      const cityName = searchValue.value;
      const url = `https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&titles=${cityName}&formatversion=2&exsentences=5&exlimit=1&explaintext=1`;
      const proxyUrl = 'https://cors-anywhere.herokuapp.com/';
      fetch(proxyUrl + url)
      .then(response => response.json())
      .then((data) => {
        const retrievedInfo = data["query"]["pages"]["0"]["extract"]
        const detail = document.querySelector('#wiki-info');
        detail.placeholder = retrievedInfo;
      })
    });
  }
}

const textCheck = () => {
  console.log('here');
  const search = document.querySelector(".text-checkbox");
  search.addEventListener('change', (event) => {
    if(search.checked) {
      let text = document.querySelector('#wiki-info');
      // console.log(text)
      text.value = text.placeholder;
    } else {
      let text = document.querySelector('#wiki-info');
      // console.log(text)
      text.value = null;
    }
  });
}

export { wikiApi, textCheck };
