/*function giaTri(a) {
    document.getElementById("input").value += a
}

function tinh() {
    let x = document.getElementById("input").value
    let y = eval(x)
    document.getElementById("input").value = y
}

function xoa() {
    document.getElementById("input").value = ""
}*/
$(document).ready(function() {
    var result = 0;
    var a = [];
    result = (eval(($("#input").val())));
    $("button").click(function() {
        if ($("#input").val() == 0) {
            $("#input").val($(this).text());
        } else if (result == $("#input").val()) {
            $("#input").val("");
            $("#input").val($("#input").val() + $(this).text());
        } else {
            $("#input").val($("#input").val() + $(this).text());
        }
    });

    $(".chia").click(function() {
        $("#input").val($("#input").val() + '/');
    })


    $(".nhan").click(function() {
        $("#input").val($("#input").val() + '*');
    })

    $(".tru").click(function() {
        $("#input").val($("#input").val() + '-');
    })

    $(".cong").click(function() {
        $("#input").val($("#input").val() + '+');
    })


    $("#xoa").click(function() {
        $("#input").val("0");
    });

    $("#equals").click(function() {
        result = (eval(($("#input").val())));
        $("#input").val(result);
    });
});