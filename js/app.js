// Constantes de ventana flotante de formulario
const salirBtn = document.querySelector('.salir-actividad-form-btn');
const formContainer = document.querySelector('.actividad-form-container');
const addActividadBtn = document.querySelector('.agregar-actividad-btn');
const editActividadBtn = document.querySelector('edit-activity-btn');

// Constantes del formulario actividades
const actividadForm = document.querySelector('.actividad-form');
const tituloActividadForm = document.querySelector('.titulo-actividad-form h2');
const actividadFormSubmitBtnSpan = document.querySelector('.actividad-form-submit-btn span'); 
const idTipoActividad = document.querySelector('#id_tipo_actividad');
const idCurso = document.querySelector('.nombre-curso-form');
const idActividad = document.querySelector('#id_actividad');
const fechaInicio = document.querySelector('#fecha_inicio');
const fechaEntregaLabel = document.querySelector('label[for=fecha_entrega]');
const fechaEntrega = document.querySelector('#fecha_entrega');
const fechaDisponibleLabel = document.querySelector('label[for=fecha_disponible]');
const fechaDisponible = document.querySelector('#fecha_disponible');
const temaLabel = document.querySelector('label[for=tema]');
const tema = document.querySelector('#tema');
const subtema = document.querySelector('#subtema');
const descripcion = document.querySelector('#descripcion');
const punteoLabel = document.querySelector('label[for=punteo]');
const punteo = document.querySelector('#punteo');
const completado = document.querySelector('#completado');
const agregarActividadBtn = document.querySelector('#agregar-actividad-btn');

// Botón salir ventana flotante
salirBtn.addEventListener('click', () => {
  formContainer.style.display = "none";
});

// Botón abrir ventana flotante del formulario para crear una nueva actividad
addActividadBtn.addEventListener('click', () => {
  actualizarCampos();
  tituloActividadForm.innerHTML = "Agregar Nueva Actividad";
  actividadFormSubmitBtnSpan.innerHTML = "Agregar Actividad";
  actividadForm.setAttribute("action","?p=agregar-actividad");
  idActividad.value = "";
  idTipoActividad.value = "";
  fechaInicio.value = "";
  fechaEntrega.value = "";
  fechaDisponible.value = "";
  tema.value = "";
  subtema.value = "";
  descripcion.value = "";
  punteo.value = "";
  completado.checked = false;
  formContainer.style.display = "flex";
});

// Seleccionando tipo de actividad
idTipoActividad.addEventListener('click', actualizarCampos);

// Actualiza los campos según sea el tipo de actividad
function actualizarCampos() {
  // Cuando es una clase aparecer solo los campos necesarios
  if (idTipoActividad.value == 0) {
    fechaInicio.style.display = "block";
    fechaEntregaLabel.style.display = "none";
    fechaEntrega.style.display = "none";
    fechaEntrega.removeAttribute("required");
    fechaDisponibleLabel.style.display = "none";
    fechaDisponible.style.display = "none";
    fechaDisponible.removeAttribute("required");
    tema.style.display = "block";
    subtema.style.display = "block";
    descripcion.style.display = "block";
    punteoLabel.style.display = "none";
    punteo.style.display = "none";
    punteo.removeAttribute("required");
    temaLabel.style.marginTop = "-40px";

    // Cuando es una tarea, un proyecto, un examen parcial, examen final o examen extraordinario aparecer solo los campos necesarios
  } else {
    fechaInicio.style.display = "block";
    fechaEntregaLabel.style.display = "block";
    fechaEntrega.style.display = "block";
    fechaEntrega.setAttribute("required","");
    fechaDisponibleLabel.style.display = "block";
    fechaDisponible.style.display = "block";
    fechaDisponible.setAttribute("required","");
    tema.style.display = "block";
    subtema.style.display = "block";
    descripcion.style.display = "block";
    punteoLabel.style.display = "block";
    punteo.style.display = "block";
    punteo.setAttribute("required","");
    temaLabel.style.marginTop = "0";
  }
}

// Botón para abrir ventana flotante de editar actividad
function editarActividad(idActividadP, idTipoActividadP, fechaInicioP, fechaEntregaP, fechaDisponibleP, temaP, subtemaP, descripcionP, punteoP, completadoP, idCursoP) {
  actualizarCampos();
  tituloActividadForm.innerHTML = "Editar Actividad";
  actividadFormSubmitBtnSpan.innerHTML = "Editar Actividad";
  actividadForm.setAttribute("action","?p=editar-actividad");
  idCurso.value = idCursoP;
  idActividad.value = idActividadP;
  idTipoActividad.value = idTipoActividadP;
  fechaInicio.value = fechaInicioP;
  fechaEntrega.value = fechaEntregaP;
  fechaDisponible.value = fechaDisponibleP;
  tema.value = temaP;
  subtema.value = subtemaP;
  descripcion.value = descripcionP;
  punteo.value = punteoP;
  if (completadoP == 1) {
    completado.checked = true;
  } else {
    completado.checked = false;
  }
  
  formContainer.style.display = "flex";
}

// Lanza una alerta para preguntarle al usuario si está seguro de eliminar la actividad
function eliminarActividad(idActividadP,nombreTipoP,temaP, idCursoP) {
  Swal.fire({
    title: '¿Estás seguro de eliminar está actividad?',
    text: "Se eliminará 1 "+nombreTipoP+" con el tema "+temaP,
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Sí, eliminar!'
  }).then((result) => {
    if (result.isConfirmed) {
        // Petición AJAX
        $.ajax({
          url: '?p=eliminar-actividad',
          type: 'POST',
          data: {id_actividad:idActividadP},
          success: function(response){
            Swal.fire({
              title: '¡Actividad Eliminada!',
              text: 'La actividad '+nombreTipoP+' se ha eliminado exitosamente',
              icon: 'success',
            }).then((result) => {
              if (result.isConfirmed) {
                window.location.reload(false);
              }
            })
          }
        });
    }
  })
}