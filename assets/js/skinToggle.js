// let darkMode = localStorage.getItem("darkMode");

// if (darkMode === "enabled") {
//     enableDarkMode();
// }
// else {
//     disableDarkMode();
// }

function disableDarkMode() {
    var link = document.getElementById('dark-toggle-link');
    let temp =  link.href.replace('main', 'light');
    link.href =  temp.replace('dark', 'light');
    var r = document.getElementById('dark-toggle');
    r.classList.remove('dark');
    r.classList.add('light');
    var e = document.getElementById('big-home-logo');
    if (e !== null)
        e.src = e.src.replace('dark', 'light');
    localStorage.setItem("darkMode", null);
}

function enableDarkMode() {
    var link = document.getElementById('dark-toggle-link');
    let temp =  link.href.replace('main', 'dark');
    link.href =  temp.replace('light', 'dark');
    var r = document.getElementById('dark-toggle');
    r.classList.remove('light');
    r.classList.add('dark');
    var e = document.getElementById('big-home-logo');
    if (e !== null)
        e.src = e.src.replace('light', 'dark');
    localStorage.setItem("darkMode", "enabled");
}

function darkToggle() {
    let darkMode = localStorage.getItem("darkMode");
    if (darkMode === "enabled") {
        disableDarkMode();
    }
    else {
        enableDarkMode();
    }
}
