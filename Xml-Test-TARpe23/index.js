function loadXml(filename) {
    const xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET", filename, false);
    xmlhttp.send();
    return xmlhttp.responseXML; 
}

function getPlatforms(platformElements) {
    let  result = [];
    for (const platform of platformElements) {
        result.push(platform.textContent);
    }
    return result.join("/");

}

function generateTable(xml) {
    let tableRows = "<tr><th>Title</th><th>Price</th><th>Platforms</th></tr>";

    const gamesElements = xml.getElementsByTagName("game");
    
    for (let i = 0; i < gamesElements.length; i++) {
        const element = gamesElements[i];
        tableRows += 
        `
        <tr>
            <td>
                ${element.getElementsByTagName("title")[0].childNodes[0].nodeValue}
            </td>
            <td>
                ${element.getElementsByTagName("price")[0].childNodes[0].nodeValue}
            </td>
            <td>
                ${getPlatforms(element.getElementsByTagName("platform"))}
            </td>
        </tr>
        `;

    }


    return tableRows;
}

document.getElementById("app").innerHTML = '<table id="xmlTable"></table>';
document.getElementById("xmlTable").innerHTML = generateTable(loadXml("games.xml"));
