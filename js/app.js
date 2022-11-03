const salirBtn = document.querySelector('.salir-actividad-form-btn');
const formContainer = document.querySelector('.actividad-form-container');
const addActividadBtn = document.querySelector('.agregar-actividad-btn');
const editActividadBtn = document.querySelector('edit-activity-btn');

salirBtn.addEventListener('click', () => {
  formContainer.style.display = "none";
});

addActividadBtn.addEventListener('click', () => {
  formContainer.style.display = "flex";
});