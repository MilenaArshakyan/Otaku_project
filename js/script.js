var navlinks = document.getElementById("navlinks")
function showmenu() {
    navlinks.style.right = "0";
}
function hidemenu() {
    navlinks.style.right = "-200px";
}


const layers = document.querySelectorAll('.Nostalgic .anirows .noscol .noscol1 .layer');

layers.forEach(layer => {
  const h3 = layer.querySelector('h3');
  layer.addEventListener('mouseenter', () => {
    layer.style.background = 'rgba(4, 9, 30, 0.8)';
    h3.style.bottom = '30%';
    h3.style.opacity = '1';
  });
  layer.addEventListener('mouseleave', () => {
    layer.style.background = 'transparent';
    h3.style.bottom = '0px';
    h3.style.opacity = '0';
  });
});



  