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
    var e = document.getElementById('dark-toggle').children[0];
    e.src = e.src.replace('dark', 'light');
    e = document.getElementById('big-home-logo');
    if (e !== null)
        e.src = e.src.replace('dark', 'light');
    localStorage.setItem("darkMode", null);
}

function enableDarkMode() {
    var link = document.getElementById('dark-toggle-link');
    let temp =  link.href.replace('main', 'dark');
    link.href =  temp.replace('light', 'dark');
    var e = document.getElementById('dark-toggle').children[0];
    e.src = e.src.replace('light', 'dark');
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
