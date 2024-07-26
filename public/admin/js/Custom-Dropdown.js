/* Created by Tivotal */

const menu = document.querySelector(".select-menu");

const btn = document.querySelector(".menu-btn");

const options = document.querySelectorAll(".option");
const btn_txt = document.querySelector(".btn-text");
const fontfont = document.querySelector(".fontfont");
const valueData = document.querySelector(".socialHandleValue");

options.forEach((option) => {
  option.addEventListener("click", () => {
    let selectedOption = option.querySelector(".option-text").innerText;
    let selectedfontfont = option.querySelector(".fontfab");
    fontfont.style.color = selectedfontfont.style.color;
    fontfont.className = selectedfontfont.className;

    btn_txt.innerText = selectedOption;
    valueData.value = selectedOption;
    menu.classList.remove("open");
  });
});

btn.addEventListener("click", () => {
  menu.classList.toggle("open");
});
