
document.getElementById("btn").addEventListener("mouseenter", () => {

    const a = document.getElementById("box");
    a.style.transform = "translateX(0px)";
    a.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";
    a.style.opacity = "1";

})


document.getElementById("subheader").addEventListener("mousemove", () => {

    box.classList.remove("unlocked");
    box.style.transform = "translateX(-192px)";
    box.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";

})


document.getElementById("slideout").addEventListener("mouseenter", () => {

    const a = document.getElementById("box");
    a.style.transform = "translateX(0px)";
    a.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";
    a.style.opacity = "1";

})


document.getElementById("left-div").addEventListener("mouseover", () => {

    const a = document.getElementById("box");
    a.style.transform = "translateX(-192px)";
    a.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";
    a.style.opacity = "1";

})


document.getElementById("cover").addEventListener("mouseleave", () => {

    const a = document.getElementById("box");
    a.style.transform = "translateX(-210px)";
    a.style.opacity = "0";
    a.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";

})


document.getElementById("header").addEventListener("mouseover", () => {

    const a = document.getElementById("box");
    a.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";
    a.style.opacity = "1";

})

document.getElementById("first").addEventListener("mouseenter", () => {

    document.getElementById("first").style.background = "rgba(55, 53, 47, 0.08)"

})
document.getElementById("first").addEventListener("mouseleave", () => {

    document.getElementById("first").style.background = "none"

})


document.getElementById("secondone").addEventListener("mouseenter", () => {

    document.getElementById("secondone").style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementById("secondone").addEventListener("mouseleave", () => {

    document.getElementById("secondone").style.background = "none"
})

document.getElementById("secondtwo").addEventListener("mouseenter", () => {

    document.getElementById("secondtwo").style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementById("secondtwo").addEventListener("mouseleave", () => {

    document.getElementById("secondtwo").style.background = "none"
})

document.getElementById("secondthree").addEventListener("mouseenter", () => {

    document.getElementById("secondthree").style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementById("secondthree").addEventListener("mouseleave", () => {

    document.getElementById("secondthree").style.background = "none"
})


document.getElementById("addapage").addEventListener("mouseenter", () => {

    document.getElementById("addapage").style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementById("addapage").addEventListener("mouseleave", () => {

    document.getElementById("addapage").style.background = "none"
})


document.getElementsByClassName("one")[0].addEventListener("mouseenter", () => {

    document.getElementsByClassName("one")[0].style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementsByClassName("one")[0].addEventListener("mouseleave", () => {

    document.getElementsByClassName("one")[0].style.background = "none"
})

document.getElementsByClassName("two")[0].addEventListener("mouseenter", () => {

    document.getElementsByClassName("two")[0].style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementsByClassName("two")[0].addEventListener("mouseleave", () => {

    document.getElementsByClassName("two")[0].style.background = "none"
})

document.getElementsByClassName("three")[0].addEventListener("mouseenter", () => {

    document.getElementsByClassName("three")[0].style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementsByClassName("three")[0].addEventListener("mouseleave", () => {

    document.getElementsByClassName("three")[0].style.background = "none"
})


document.getElementsByClassName("four")[0].addEventListener("mouseenter", () => {

    document.getElementsByClassName("four")[0].style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementsByClassName("four")[0].addEventListener("mouseleave", () => {

    document.getElementsByClassName("four")[0].style.background = "none"
})

document.getElementsByClassName("five")[0].addEventListener("mouseenter", () => {

    document.getElementsByClassName("five")[0].style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementsByClassName("five")[0].addEventListener("mouseleave", () => {

    document.getElementsByClassName("five")[0].style.background = "none"
})


document.getElementById("fourth").addEventListener("mouseenter", () => {

    document.getElementById("fourth").style.background = "rgba(55, 53, 47, 0.08)"
})
document.getElementById("fourth").addEventListener("mouseleave", () => {

    document.getElementById("fourth").style.background = "none"
})



// on btn button click
document.getElementById("slideout").addEventListener("click", () => {


    const box = document.getElementById("box");
    box.classList.add("locked");
    box.style.setProperty("transform", "translateX(-192px)");
    box.style.setProperty("transition", "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)");



    // add animation sliding transitions
    const b = document.getElementById("right-div");
    b.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";
    const c = document.getElementById("left-div");
    c.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";

    // add classes on both moving divs
    document.getElementById("right-div").classList.add("slider");
    document.getElementById("left-div").classList.add("slider");

    // toggle classes on cover, box and btn
    document.getElementById("cover").classList.add("widthzero");
    document.getElementById("btn").classList.add("hide");

    // vanish big button clicked
    document.getElementById("slideout").style.display = "none";

    // create new button and append 
    const bt = document.createElement("button");
    bt.innerHTML = "<<";
    bt.id = "sliderbtn";
    document.getElementById("paddedname").appendChild(bt);


    // on sliderbtn button click
    document.getElementById("sliderbtn").addEventListener("click", () => {

        box.classList.remove("locked");
        box.classList.add("unlocked");
        box.style.setProperty("transform", "translateX(0px)");

        document.getElementById("slideout").addEventListener("mouseenter", () => {

            box.classList.remove("unlocked");

        })


        document.getElementById("subheader").addEventListener("mousemove", () => {

            box.classList.remove("unlocked");
            box.style.transform = "translateX(-192px)";
            box.style.opacity = "1";
            box.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";

        })

        // adding transitions
        const b = document.getElementById("right-div");
        b.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";
        const c = document.getElementById("left-div");
        c.style.transition = "0.5s cubic-bezier(0.075, 0.820, 0.165, 1.000)";

        // removing classlist from both divs
        document.getElementById("right-div").classList.remove("slider");
        document.getElementById("left-div").classList.remove("slider");

        // removing created button
        const n = document.querySelector("#sliderbtn");
        n.parentNode.removeChild(n);

        //removing hide and displaying those sections again
        document.getElementById("cover").classList.remove("widthzero");
        document.getElementById("btn").classList.remove("hide");

        // displaying the button again
        document.getElementById("slideout").style.display = "block";
    })
})


