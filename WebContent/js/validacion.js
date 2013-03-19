window.onload=generarEvento;

function validacion(){
	var isbn= document.getElementById("isbn");
	var miformulario=document.getElementById("miformulario");
	if(isbn.value==""){
		alert("Introduce el ISBN");
		return false;
	}else{
		if(isbn.value.length!=17){
			alert("ISBN incompleto");
			return false;
		}else{
			if(isbn.value.charAt(3)=='-' && isbn.value.charAt(6)=='-' && isbn.value.charAt(11)=='-' && isbn.value.charAt(15)=='-'){
				miformulario.submit();
			}else{
				alert("ISBN incorrecto");
				return false;
			}
		}
	}
}

function generarEvento() {
	var formularioInsercion= document.getElementById("formularioInsercion");
	formularioInsercion.onsubmit= function () {
		 validacion();
		 return false;
	};
}