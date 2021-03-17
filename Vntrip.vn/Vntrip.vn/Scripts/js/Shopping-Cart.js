// <scrip
// function AddCart(id) {
//     $.ajax({
//         url: '<?php echo url('AddCart')?>/' + id,
//         type: 'GET',
//     }).done(function (response) {
//         RenderCart(response);
//         alertify.success('Đã thêm mới sản phẩm');
//     });
// }
//
// function AddHeart(id) {
//     $.ajax({
//         url: '<?php echo url('AddHeart')?>/' + id,
//         type: 'GET',
//     }).done(function (response) {
//         RenderCart(response);
//         alertify.success('Đã thêm mới sản phẩm ưa thích');
//     });
// }
//
// $("#change-item-cart").on("click", ".si-close i", function () {
//     $.ajax({
//         url: '<?php echo url('Delete-Item-Cart')?>/' + $(this).data("id"),
//         type: 'GET',
//     }).done(function (response) {
//         RenderCart(response);
//         alertify.success('Đã xóa sản phẩm');
//     });
// });
//
// function RenderCart(response) {
//     $("#change-item-cart").empty();
//     $("#change-item-cart").html(response);
//     $("#total-quanty-show").text($("#total-quanty-cart").val());
// }
//
// function DeleteListItemCart(id) {
//     $.ajax({
//         url: '<?php echo url('Delete-Item-List-Cart')?>/' + id,
//         type: 'GET',
//     }).done(function (response) {
//         RenderListCart(response);
//         alertify.success('Đã xóa sản phẩm');
//     });
// }
//
// function RenderListCart(response) {
//     $("#list-cart").empty();
//     $("#list-cart").html(response);
//
//     var proQty = $('.pro-qty');
//     proQty.prepend('<span class="dec qtybtn">-</span>');
//     proQty.append('<span class="inc qtybtn">+</span>');
//     proQty.on('click', '.qtybtn', function () {
//         var $button = $(this);
//         var oldValue = $button.parent().find('input').val();
//         if ($button.hasClass('inc')) {
//             var newVal = parseFloat(oldValue) + 1;
//         } else {
//             // Don't allow decrementing below zero
//             if (oldValue > 0) {
//                 var newVal = parseFloat(oldValue) - 1;
//             } else {
//                 newVal = 0;
//             }
//         }
//         $button.parent().find('input').val(newVal);
//     });
// }
//
// function SaveListItemCart(id) {
//     $.ajax({
//         url: '<?php echo url('Save-Item-List-Cart')?>/' + id + '/' + $("#quanty-item-" + id).val(),
//         type: 'GET',
//     }).done(function (response) {
//         RenderListCart(response);
//         alertify.success('Đã cập nhật sản phẩm');
//     });
// }
//
// $(".edit-all").on("click", function () {
//     var lists = [];
//     $("table tbody tr td").each(function () {
//         $(this).find("input").each(function () {
//             var element = {key: $(this).data("id"), value: $(this).val()};
//             lists.push(element);
//         })
//     });
//     $.ajax({
//         url: '<?php echo url('Save-All')?>',
//         type: 'POST',
//         data: {
//             "_token": "{{ csrf_token() }}",
//             "data": lists
//         }
//     }).done(function (response) {
//         location.reload();
//         alertify.success('Đã cập nhật sản phẩm');
//     });
// })
