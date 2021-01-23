// default map layer
let map = L.map('map', {
    layers: MQ.mapLayer(),
    center: [31.905455218200064, 35.20356449458499],
    zoom: 11
});


function runDirection(sCity,sName,sActivity,eCity,eName,eActivity) {

    // recreating new map layer after removal
    // map = L.map('map', {
    //     layers: MQ.mapLayer(),
    //     center: [31.905455218200064, 35.20356449458499],
    //     zoom: 12
    // });

    var dir = MQ.routing.directions();

    dir.route({
        locations: [
            sCity,
            eCity
        ]
    });


    CustomRouteLayer = MQ.Routing.RouteLayer.extend({

        createStartMarker: (location) => {
            var custom_icon;
            var marker;

            custom_icon = L.icon({
                iconUrl: 'https://i.ibb.co/sFt5gT7/red.png',
                iconSize: [20, 29],
                iconAnchor: [10, 29],
                popupAnchor: [0, -29]
            });

            marker = L.marker(location.latLng, { icon: custom_icon }).addTo(map).bindPopup('<div><h3 class="text-danger mb-2">'+ sName +'</h3><h5 class="text-muted mb-4">'+sCity+'</h5><h5>'+sActivity+'</h5></div>');

            return marker;
        },

        createEndMarker: (location) => {
            var custom_icon;
            var marker;

            custom_icon = L.icon({
                iconUrl: 'https://i.ibb.co/sFt5gT7/red.png',
                iconSize: [20, 29],
                iconAnchor: [10, 29],
                popupAnchor: [0, -29]
            });

            marker = L.marker(location.latLng, { icon: custom_icon }).addTo(map).bindPopup('<div><h3 class="text-danger mb-2">'+ eName +'</h3><h5 class="text-muted mb-4">'+eCity+'</h5><h5>'+eActivity+'</h5></div>');

            return marker;
        }
    });

    map.addLayer(new CustomRouteLayer({
        directions: dir,
        fitBounds: true
    }));
}


// function that runs when form submitted
function submitForm(event) {
    event.preventDefault();

    // delete current map layer
    // map.remove();

    // getting form data
    var data = document.getElementById("landmarks").value;
    var landmarks = data.split(/[\[,\]]/);
    for (var i = 0; i < landmarks.length; i++) {
        if (landmarks[i] === "") {
            landmarks.splice(i, 1);
        }
    }
    console.log(landmarks);


    for (var i = 0; i < landmarks.length; i+=3) {
        // run directions function
        runDirection(
            landmarks[i],landmarks[i+1],landmarks[i+2],
            landmarks[i+3],landmarks[i+4],landmarks[i+5]
            );
    }

    // reset form
    // document.getElementById("form").reset();
}

// asign the form to form variable
const form = document.getElementById('form');

// call the submitForm() function when submitting the form
form.addEventListener('submit', submitForm);
