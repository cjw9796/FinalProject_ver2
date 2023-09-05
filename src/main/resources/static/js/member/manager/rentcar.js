function delRent(element) {

    userNumber = element.id;

    console.log("삭제버튼 클릭");
    // Swal.fire('비밀번호가 변경됐습니다', '', 'success').then((result) => {
    //
    //     window.location.href = '/';
    //
    // })

    Swal.fire({
        title: '<strong>HTML <u>example</u></strong>',
        icon: 'warning',
        title: '정말 렌트카 결제내역을 삭제하시겠습니까?',
        showCloseButton: false,
        showCancelButton: true,
        focusConfirm: false,
        confirmButtonText:
            '확인',
        confirmButtonAriaLabel: 'great!',
        cancelButtonText:
            '취소',
        cancelButtonAriaLabel: 'Thumbs down'
    }).then((result) => {

        if (result.isConfirmed) {

            var query = {
                userNumber:userNumber
            }

            $.ajax({

                url: '/manager/deleteRent',
                method: 'POST',
                data: query,
                success: function (data) {

                    Swal.fire('삭제가 완료됐습니다.', '', 'success').then((result) => {

                        location.reload();

                    })
                }, error: function () {

                }
            });

        }

    })
}