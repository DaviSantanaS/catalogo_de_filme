let result = document.getElementById('result');

async function getData() {
    let response = await fetch('https://swapi.dev/api/planets');
    let data = await response.json();
    return data;
}

async function getPlanets() {
    let data = await getData();
    let planets = data.results;
    return planets;
}

planets = getPlanets();


console.log(planets);