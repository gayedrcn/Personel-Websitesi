$(function () {
    $("#tblDepartmanlar").DataTable({
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Turkish.json"
        }
    });
   

    //$("#tblDepartmanlar").on("click", ".btnDepartmanSil", function () {
   
    //    bootbox.confirm("Departmanı silmek istediğinize emiin misiniz?", function () {
    //        var id = $(this).data("id");
    //        var btn = $(this);
    //        $.ajax({
    //            type: "GET",
    //            url: "/Departman/Sil/" + id,
    //            success: function () {
    //                btn.parent().parent().remove();
    //            }
    //        });
    //    })
    //});
});

$(function () {
    $("#tblPersoneller").DataTable({
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Turkish.json"
        }
    });
});

function CheckDateTypeIsValid(dateElement) {
    var value = $(dateElement).val();
    if (value == '') {
        $(dateElement).valid("false");
    }
    else {
        $(dateElement).valid();
    }
}