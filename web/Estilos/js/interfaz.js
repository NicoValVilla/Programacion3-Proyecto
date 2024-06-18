//profile button

let btn = document.getElementById("dropdown");
let drop = document.getElementById("item-dropdown");

btn.addEventListener("click", function () {
    drop.classList.toggle("active");
});

// aside

function assignActiveClass(item) {
    var listItems = document.querySelectorAll('.item');
    listItems.forEach(function (element) {
        element.classList.remove('active');
    });
    document.querySelector(item).classList.add('active');
}


//modal
