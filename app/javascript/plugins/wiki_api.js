const wikiApi = () => {
  const search = document.getElementById("wiki-button");
  if(search) {
    search.addEventListener('click', (event) => {
      let searchValue = document.querySelector('#search')
      console.log(searchValue.value);
      const cityName = searchValue.value;
      const placeNames = cityName.replace( " ", "%20" );
      const removedCountry = placeNames.replace(/(,.[^,]+)$/, "")
      const url = `https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&list=search&srsearch=${removedCountry}&formatversion=2&exsentences=5&exlimit=1&explaintext=1`;
      const proxyUrl = 'https://cors-anywhere.herokuapp.com/';
      fetch(proxyUrl + url)
      .then(response => response.json())
      .then((data) => {
        const retrievedInfo = data["query"]["search"][0]["snippet"]
        const refinedDescription = retrievedInfo.replace(/(<([^>]+)>)/ig, "" )
        const detail = document.querySelector('#wiki-info');
        detail.placeholder = refinedDescription;
      })
    });
  }
}

const textCheck = () => {
  console.log('here');
  const search = document.querySelector(".text-checkbox");
  if (search) {
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
}

export { wikiApi, textCheck };
