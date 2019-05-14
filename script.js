function makeRequest(url, method, formdata, callback) {
    const headerObject = method =="GET" || !formdata ? { method: method } : { method : method, body: formdata }
    
    fetch(url, headerObject).then((data) => {
        return data.json()
    }).then((result) => {
        callback(result)
    }).catch((err) => {
        console.log(err)
    })
}

function save() {

    // läser input och plockar bort året
    var userDate = document.getElementById("birthDate").value;
    var newUserDate = userDate.slice(5);

    if (newUserDate <= "01-19") {
        var chosenDate = ("2020-") + newUserDate;
    } else {
        var chosenDate = ("2019-") + newUserDate;
    }

    var requestData = new FormData() 
    requestData.set("currentHoroscope", chosenDate)
    requestData.set("action", "save")

    makeRequest("addHoroscope.php", "POST", requestData, (response) => {

        if (!response) {
            var text = document.getElementById("text");
            text.innerHTML = "platsen är upptagen";
        } else {
            view();
        }
        
    })
}

// uppdatera nuvarande värde /stjärntecken
function update() {
    var userDate = document.getElementById("birthDate").value;
    var newUserDate = userDate.slice(5);
    
    if (newUserDate <= "01-19") {
        var chosenDate = ("2020-") + newUserDate;
    } else {
        var chosenDate = ("2019-") + newUserDate;
    }
    
    var requestData = new FormData() 
    requestData.set("currentHoroscope", chosenDate)
    requestData.set("action", "update")
    
    makeRequest("updateHoroscope.php", "POST", requestData, (response) => {
        view();
        })
        
}
// ta bort nuvarande värde
function remove() {
makeRequest("deleteHoroscope.php", "DELETE", undefined, (response) => {
console.log(response)
var text = document.getElementById("text");
text.innerHTML = "";
})

}

function view() {
    makeRequest("viewHoroscope.php", "GET", undefined, (response) => {
        if (response != undefined) {
            var zodiac = (response[0].horoscopeSign);
            var text = document.getElementById('text');
            text.innerHTML = zodiac;
        } 
    })
        
        

}



