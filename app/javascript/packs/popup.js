window.addEventListener('turbolinks:load', () => {
  const matches = document.querySelectorAll(".card-match");
  const close = document.querySelectorAll(".match-modal-close");

  matches.forEach(match => {
  const modal = document.getElementById(`match-modal-${match.dataset.matchid}`)
  const closeButton = document.getElementById(`match-modal-close-${match.dataset.matchid}`)

  match.onclick = function(event) {
    modal.style.display = "block";
  }

  closeButton.onclick = function(event) {
    modal.style.display = "none";
   }
  })
});
