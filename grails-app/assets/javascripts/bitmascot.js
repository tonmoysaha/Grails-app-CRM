$(function () {
    $('#datetimepicker1').datetimepicker({
        format: 'DD/MM/YYYY'
    });
});


$(document).ready(function () {
    $.validator.addMethod("email", function (value, element) {
        return this.optional(element) || /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.test(value);
    }, "Email is invalid: Enter a valid email");

    $("#signUpForm").validate({
        rules: {
            firstName: "required",
            lastName: "required",
            phone: "required",
            address: "required",
            email: "required",
            password: "required",
            birthdate: "required",
        },
        messages: {
            firstName: "please enter your firstName",
            lastName: "please enter your lastName",
            phone: "please enter your phone",
            address: "please enter your address",
            email: "please enter your email",
            password: "please enter your password",
            birthdate: "please enter your birthdate",
        }
    });
});

$(document).ready(function() {
    $("#loginFormloginForm").validate({
        rules: {
            email: "required",
            password: "required",
        },
        messages: {
            email: "please enter your email",
            password: "please enter your password",
        }
    });
});





