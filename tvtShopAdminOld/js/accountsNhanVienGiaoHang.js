function loadIMG(event) {
    if (event.target.files.length > 0) {
        var src = URL.createObjectURL(event.target.files[0]);
        document.getElementById('avatar').src = src;
    }
}

function removeAvatar(){
    document.getElementById('avatar').src = "../../tvtShopAdmin/img/whiteAvatar.png";
}