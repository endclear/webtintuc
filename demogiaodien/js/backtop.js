//Khi người dùng cuộn chuột thì gọi hàm scrollFunction
window.onscroll = function () { scrollFunction() };
// khai báo hàm scrollFunction
function scrollFunction() {
    // Kiểm tra vị trí hiện tại của con trỏ so với nội dung trang
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        //nếu lớn hơn 50px thì hiện button
        document.getElementById("myBtn").style.display = "block";
    } else {
        //nếu nhỏ hơn 50px thì ẩn button
        document.getElementById("myBtn").style.display = "none";
    }
}
//gán sự kiện click cho button
document.getElementById('myBtn').addEventListener("click", function () {
    //Nếu button được click thì nhảy về đầu trang
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
});