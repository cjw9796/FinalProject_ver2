$(function () {
    $('#confirm').click(function () {
        window.opener.location.href = '/index';
        window.self.close();
    })
})