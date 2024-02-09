const searchInput = document.getElementById("search-input");
const animeResults = document.getElementById("anime-results");

  searchInput.addEventListener("input", function() {
    const searchTerm = searchInput.value.toLowerCase();
    const items = document.querySelectorAll(".layer h3");
    items.forEach(item  => {
        if(!item.innerText.toLowerCase().includes(searchTerm))
        {
            item.parentNode.parentNode.parentNode.style.display = "none";
        }
        else{
            item.parentNode.parentNode.parentNode.style.display = "block";
        }
    });
  });


function renderAnimeResults(animeArr) {
    animeResults.innerHTML = "";
  
    animeArr.forEach(function(anime) {
      const animeDiv = document.createElement("div");
      animeDiv.classList.add("anime-item");
  
      const img = document.createElement("img");
      img.src = anime.image;
      img.alt = anime.title;
      animeDiv.appendChild(img);
  
      const layerDiv = document.createElement("div");
      layerDiv.classList.add("layer");
  
      const title = document.createElement("h3");
      title.textContent = anime.title;
      layerDiv.appendChild(title);
  
      animeDiv.appendChild(layerDiv);
  
      animeResults.appendChild(animeDiv);
    });
  }
  