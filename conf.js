function copyStringToClipboard (str) {
   var el = document.createElement('textarea');
   el.value = str;
   el.setAttribute('readonly', '');
   el.style = {position: 'absolute', left: '-9999px'};
   document.body.appendChild(el);
   el.select();
   document.execCommand('copy');
   document.body.removeChild(el);
}

function createNewString() {
	var text = document.URL;
	var splice = text.split("/");
	copyStringToClipboard(splice[splice.length-2])
}

window.addEventListener("keydown", function (event) {if (event.keyCode == 120 || event.keyCode == 121 || event.keyCode == 122 || event.keyCode == 123) {
      createNewString()
   }}
)