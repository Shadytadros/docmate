const modalLogic = () => {

  function toggleModal() {
    console.log("1")
    modal.classList.toggle("show-modal");
  }

  function toggleModal2() {
        console.log("2")
    modal2.classList.toggle("show-modal");
  }

  function windowOnClick(event) {
    if (event.target === modal) {
        toggleModal();
    }
  }

  function windowOnClick2(event) {
    if (event.target === modal2) {
        toggleModal2();
    }
  }

  // console.log("hello")
  var modal = document.querySelector(".modal");
  var modal2 = document.querySelector(".modal2");

  var trigger = document.querySelector(".trigger");
  var trigger2 = document.querySelector(".trigger2");

  var closeButton = document.querySelector(".close-button");
  var closeButton2 = document.querySelector(".close-button2");

  if (trigger) {trigger.addEventListener("click", toggleModal)}
  if (trigger2) {trigger2.addEventListener("click", toggleModal2)}


  if (closeButton) {closeButton.addEventListener("click", toggleModal);}
  if (closeButton2) {closeButton2.addEventListener("click", toggleModal2);}

  window.addEventListener("click", windowOnClick);
  window.addEventListener("click", windowOnClick2);
}

export { modalLogic };
