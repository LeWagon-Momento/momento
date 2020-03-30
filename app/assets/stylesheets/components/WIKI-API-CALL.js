WIKI API CALL

const search = document.getElementById("wiki-button");


search.addEventListener('click', (event) => {
  let searchValue = document.querySelector('#search')
  console.log(searchValue.value);
  const cityName = searchValue.value;
  const url = `https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts&titles=${cityName}&formatversion=2&exsentences=5&exlimit=1&explaintext=1`

  const proxyUrl = 'https://cors-anywhere.herokuapp.com/';

  fetch(proxyUrl + url)
  .then(response => response.json())
  .then((data) => {
    const retrievedInfo = data["query"]["pages"]["0"]["extract"]
    const detail = document.querySelector('#wiki-info');
    detail.placeholder = retrievedInfo;

  });
})
endorsements of linkedin
- miguel
- ken?

// info has to go into a description box DONE
// info has to transform into placeholder text DONE

// create a checkbox
// when click on checkbox placeholder text becomes real




// i should target my form element in show.html &implement an eventlistener on it ( keyup) DONE

// need to understand ajax
// need to understand api calls
// need to understand querySelector
// need to understand addEventListener


// search bar
// type into search bar DONE
// user clicks submit button for wikipedia info DONE
// eventlistener is tied to my wiki info button
// that infomation is extracted and put into a variable
// that variable is attached to wikipedia api
// the query of wiki api url
// wiki will retrieve what i want based on that variable DONE

// wiki sends it back to me DONE
// i extract that data DONE
// and display it in my view
// specifically my description box

 <!-- DUMMY NEW VIEW PAGE  -->
 <%= simple_form_for @post do |f| %>
  <%= f.input :name %>
  <%= f.input :description, input_html: {id: "wiki-info"} %>
  <%= f.button :submit %>
<% end %>


<label for="fname">search location</label><br>
<input type="text" id="search" name="fname"><br>
<input type="submit" id="wiki-button" name="fname" value="wiki info!"><br> <!-- just need to understand where is their submit button -->



WIKIPEDIA API CALL
further refine query search
will it jeapordize entire function???

for a smoother transition.
 - knowing where to put what


