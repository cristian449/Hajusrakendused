function loadSW() {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    const data = JSON.parse(this.responseText);

    const vehicles = data.map(item => `Name — ${item.name} <br> Model —  ${item.model}  <br> Manafacturer —  ${item.manufacturer} <br> Cost —  ${item.cost_in_credits}  ᖬ <br> Class —  ${item.vehicle_class}` );
    console.log(vehicles);

    document.getElementById("demo").innerHTML = vehicles.join("<br> <br>");
    
  };
  xhttp.open("GET", "https://swapi.info/api/vehicles");
  xhttp.send();
}

function loadSW2() {
  const xhttp = new XMLHttpRequest();
  xhttp.onload = function () {
    const data = JSON.parse(this.responseText);

    const starships = data.map(item => `Name — ${item.name} <br> Model —  ${item.model} <br>  Manafacturer —  ${item.manufacturer} <br>  Cost — ${item.cost_in_credits}  ᖬ <br>  Length — ${item.length} <br> Starship Class — ${item.starship_class}` );
    console.log(starships);

    document.getElementById("demo").innerHTML = starships.join("<br> <br>");
    
  };
  xhttp.open("GET", "https://swapi.info/api/starships");
  xhttp.send();
}

