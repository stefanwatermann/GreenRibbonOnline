// Init
window.onload = function(){
  console.log("window.onload called");
};

document.addEventListener("DOMContentLoaded", (event) => {
    console.log("DOM fully loaded and parsed");
    showInitMessage();
});

function showInitMessage() {
    var elem = document.createElement("div");
    elem.textContent = "Anwendung wird geladen...";
    elem.setAttribute("id", "init-message");
    document.body.appendChild(elem);
    console.log("Init message shown");
}

function removeInitMessage() {
    document.getElementById("init-message").remove();
    console.log("Init message removed");
}

// CartItem Button Handler
function cartItemButtonClick(button, rowIndex, action, cntrlId) {
    console.log("cartItemButtonClick", button, rowIndex, action, cntrlId);
    var obj = new XojoWeb.JSONItem;
    obj.set('row', rowIndex);
    obj.set('column', 0);
    obj.set('identifier', action);
    obj.set('value', rowIndex);
    XojoWeb.controls.lookup(cntrlId).triggerServerEvent('CustomCellAction', obj);
}