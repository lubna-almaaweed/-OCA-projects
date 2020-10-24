// An event to handle the phone input filter  

var a = document.querySelector("#phone");
a.addEventListener("keyup", re = () => {
    a.value = a.value.replace(/[\D]/gi, '');

});

// main class for Objectify the user Data 


//password 123qwe!Q@

class User {
    constructor(uname, email, phone, password, p2, date, checkbox) {
        this.uname = uname;
        this.email = email;
        this.phone = phone;
        this.password = password;
        this.p2 = p2;
        this.date = date;
        this.checkbox = checkbox;
    }
    validUname() {
        return /^[\w]{1,12}(\s[\w]{1,12})?$/i.test(this.uname)
    }

    validEmail() {
        return /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/gi.test(this.email)
    }

    validPhone() {
        return /^\d{3}\-?\d{4}\-?\d{3}$/gi.test(this.phone)
    }

    validPass() { return /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/g.test(this.password) && /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/g.test(this.p2) && this.password.toString() == this.p2.toString() }

    validDate() { return parseInt(this.date.slice(0, 4)) <= 2002 && parseInt(this.date.slice(0, 4)) >= 1950 }

    allValid() { return this.validDate() && this.validEmail() && this.validPass() && this.validPhone() && this.validUname() && this.checkbox }

}



//   sample password 

//                123qwe!Q@



// An event to handle store in  by click 

function saveInLocal() {

    var items = document.querySelectorAll('input');

    // uname /email /phone /pass/pass 2/ date/checkbox 
    var list = [];

    for (var i = 0; i < items.length; i++) {
        if (!(i == items.length - 1)) {
            let item = items[i].value;
            list.push(item.trim());
        } else {
            list.push(items[i].checked);
        }
    }
    var newUser = new User(list[0], list[1], list[2], list[3], list[4], list[5], list[6]);

    if (!(newUser.allValid())) {
        var submitBtn = document.querySelector('#submit-btn');
        submitBtn.style = "background:red; cursor: not-allowed;pointer - events: none;color: #c0c0c0;"

    } else {
        var submitBtn = document.querySelector('#submit-btn');
        submitBtn.style = "background:#0D0463"
        localStorage.setItem("personObject", JSON.stringify(newUser));

    }

}

function saveInSession() {

    var items = document.querySelectorAll('input');

    // uname /email /phone /pass/pass 2/ date/checkbox 
    var list = [];

    for (var i = 0; i < items.length; i++) {
        if (!(i == items.length - 1)) {
            let item = items[i].value;
            list.push(item.trim());
        } else {
            list.push(items[i].checked);
        }
    }
    var newUser = new User(list[0], list[1], list[2], list[3], list[4], list[5], list[6]);

    if (!(newUser.allValid())) {
        var submitBtn = document.querySelector('#save-btn');
        submitBtn.style = "background:red; cursor: not-allowed;pointer - events: none;color: #c0c0c0;"


    } else {
        var submitBtn = document.querySelector('#save-btn');
        submitBtn.style = "background:#0D0463"

        sessionStorage.setItem("personObject", JSON.stringify(newUser));

    }

}