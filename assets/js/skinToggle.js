// let darkMode = localStorage.getItem("darkMode");

// if (darkMode === "enabled") {
//     enableDarkMode();
// }
// else {
//     disableDarkMode();
// }

function disableDarkMode() {
    var link = document.getElementById('nav-bar-logo');
    link.src =  link.src.replace('dark', 'light');
    link = document.getElementById('dark-toggle-link');
    link.href =  link.href.replace('dark', 'light');
    var e = document.getElementById('dark-toggle');
    if (e !== null)
        e.classList.add('fa-toggle-off');
        if (e !== null)
            e.classList.remove('fa-toggle-on');
    e = document.getElementById('big-home-logo');
    if (e !== null)
        e.src = e.src.replace('dark', 'light');
    localStorage.setItem("darkMode", null);
}

function enableDarkMode() {
    var link = document.getElementById('nav-bar-logo');
    link.src =  link.src.replace('light', 'dark');
    link = document.getElementById('dark-toggle-link');
    link.href =  link.href.replace('light', 'dark');
    var e = document.getElementById('dark-toggle');
    if (e !== null)
        e.classList.add('fa-toggle-on');
        if (e !== null)
            e.classList.remove('fa-toggle-off');
    e = document.getElementById('big-home-logo');
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
