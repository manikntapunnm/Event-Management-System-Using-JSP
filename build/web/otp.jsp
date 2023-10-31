<!DOCTYPE html>
<html lang="en">

<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">
    <title>OTP Validation</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />

    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .otp-box {
            width: 40px;
            height: 40px;
            border: 1px solid #ccc;
            display: inline-block;
            text-align: center;
            line-height: 40px;
            font-size: 18px;
            margin-right: 10px;
        }

        .otp-input {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        /* Reduce the width of the card */
        .otp-card {
            width: 800px;
            max-width: 100%;
        }
    </style>
</head>

<body class="">



    <div class="pcoded-main-container d-flex align-items-center justify-content-center">
        <div class="pcoded-content">
            <!-- [ breadcrumb ] start -->
            <div class="page-header">
                <!-- Page header content here -->
            </div>
        

            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 col-md-12">
                        <div class="card table-card otp-card">
                            <div class="card-header bg-light">
                                <h5>OTP Validation</h5>
                                
                                <div class="card-header-right">
                                    <form action="index.jsp" method="get">
                                        <button type="submit" class="btn btn-link p-0"><sub>@codebook.in </sub></button>
                                    </form>
                                    <p><%= session.getAttribute("email") %></p>
                                </div>
                            </div>
                           <div class="card-body p-5">
    <div class="table-responsive d-flex justify-content-center">
        <form action="validateotp.jsp" method="post">
            <div class="otp-input">
                <input type="text" class="otp-box" maxlength="1" name="digit1" />
                <input type="text" class="otp-box" maxlength="1" name="digit2" />
                <input type="text" class="otp-box" maxlength="1" name="digit3" />
                <input type="text" class="otp-box" maxlength="1" name="digit4" />
                <!-- Hidden input field to store the concatenated OTP -->
                <input type="hidden" name="otp" id="hiddenOtpInput" />
                <% HttpSession esession = request.getSession(false);
        String email = (String) esession.getAttribute("email"); %>
        <input type="hidden" name="email" value="<%= email %>" />
            </div>
            <button type="submit" class="btn btn-primary mt-3 d-block mx-auto">Verify OTP</button>
        </form>
    </div>
</div>

<!-- JavaScript to concatenate OTP digits and update the hidden input field -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const otpBoxes = document.querySelectorAll('.otp-box');
        const hiddenOtpInput = document.getElementById('hiddenOtpInput');

        otpBoxes.forEach((box, index) => {
            box.addEventListener('input', function () {
                let otp = '';
                otpBoxes.forEach((box) => {
                    otp += box.value;
                });
                hiddenOtpInput.value = otp;
            });

            box.addEventListener('keydown', function (event) {
                const isBackspace = event.key === 'Backspace';
                const isDelete = event.key === 'Delete';

                if ((isBackspace || isDelete) && !box.value) {
                    if (index > 0) {
                        otpBoxes[index - 1].focus();
                    }
                }
            });
        });
    });
</script>


                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>

    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/ripple.js"></script>
    <script src="assets/js/pcoded.min.js"></script>

    <!-- Apex Chart -->
    <script src="assets/js/plugins/apexcharts.min.js"></script>

    <!-- custom-chart js -->
    <script src="assets/js/pages/dashboard-main.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const otpBoxes = document.querySelectorAll('.otp-box');
            const maxLength = 1;

            otpBoxes.forEach((box, index) => {
                box.addEventListener('input', function (event) {
                    const input = event.target;

                    if (input.value.length >= maxLength) {
                        if (index < otpBoxes.length - 1) {
                            otpBoxes[index + 1].focus();
                        }
                    }
                });

                box.addEventListener('keydown', function (event) {
                    const isBackspace = event.key === 'Backspace';
                    const isDelete = event.key === 'Delete';

                    if ((isBackspace || isDelete) && !box.value) {
                        if (index > 0) {
                            otpBoxes[index - 1].focus();
                        }
                    }
                });
            });
        });
    </script>
</body>

</html>
