/*!
    * Start Bootstrap - SB Admin v7.0.7 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2023 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
// 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});
document.addEventListener("DOMContentLoaded", () => {
    document.getElementById("createAccountForm").addEventListener("submit", function (e) {
        e.preventDefault(); // Ngăn form gửi yêu cầu mặc định

        // Thu thập dữ liệu từ form
        const formData = new FormData(this);

        // Gửi yêu cầu qua Fetch API
        fetch("/register", {
            method: "POST",
            body: formData,
        })
            .then((response) => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.json();
            })
            .then((data) => {
                console.log("Form submitted successfully:", data);
                alert("Đăng ký thành công!");
            })
            .catch((error) => {
                console.error("Error submitting form:", error);
                alert("Đăng ký thất bại. Vui lòng thử lại.");
            });
    });
});