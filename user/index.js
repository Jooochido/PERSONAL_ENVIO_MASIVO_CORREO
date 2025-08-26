function init(){
    $("#usuario_form").on("submit",function(e){
        guardar(e);
    });
}

$(document).ready(function(){

});

function guardar(e){
    e.preventDefault();
    var formData = new FormData($("#usuario_form")[0]);
    $.ajax({
        url: "controller/usuario.php?op=guardarcorreo",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(data){
            if(data==1){
                $.post("controller/usuario.php?op=emailBienvenida",{usu_correo : $("#usu_correo").val()},function(data){
                    //console.log(data);
                });

                $('#modalsubscribete').modal('hide');

                Swal.fire({
                    icon: "success",
                    title: "Subscrito",
                    text: "Gracias por subscribirte",
                    showConfirmButton: false,
                    timer: 2000
                });
            }else{
                Swal.fire({
                    icon: "warning",
                    title: "Advertencia",
                    text: "Correo ya subscrito",
                    showConfirmButton: false,
                    timer: 2000
                });
            }
            $("#usu_correo").val('');
        }
    });
}

init();