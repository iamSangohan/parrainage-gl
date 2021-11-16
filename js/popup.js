function openModal(id) {
    var value = id;
    value.toString();
    var  overlay = document.getElementById(value);
    overlay.style.display = 'block';
}

function closePopup(id) {
    var value = id;
    value.toString();
    var  overlay = document.getElementById(value);
    overlay.style.display = 'none';
}