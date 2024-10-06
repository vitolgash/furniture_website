console.log("Welcome to Into Your Business UK!");

function showPage(page) {
    document.getElementById('home').classList.add('hidden');
    document.getElementById('about').classList.add('hidden');
    document.getElementById(page).classList.remove('hidden');
}