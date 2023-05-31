<?php

session_start();

if (!isset($_SESSION['logged_in'])) {
    $nav = 'includes/nav.php';
} elseif ($_SESSION['logged_in'] == 'True') {
    header('Location: index.php');
} else {
    $nav = 'includes/navconnected.php';
    $idsess = $_SESSION['id'];
}
error_reporting(0);

require 'includes/header.php';
require $nav; ?>

<div class="container-fluid center-align sign">
    <div class="container">

        <div class="row">
            <div class="container forms">
                <div class="row">
                    <div class="col s12 left-align">
                        <div class="card">
                            <div class="row">
                                <h2 class="col"><a class="active" href="">Sign Up</a></h2>
                                <form class="col s12" method="POST" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col s6">
                                            <i class="material-icons prefix">email</i>
                                            <input id="icon_prefix" type="text" placeholder="Email" name="email"
                                                   class="validate" required>
                                        </div>

                                        <div class="col s6">
                                            <select class="icons" name="country">
                                                <option value="" disabled selected>Choose your country</option>
                                                <option value="Senegal">Sénégal</option>
                                                <option value="France">Egypt</option>
                                                <option value="Maroc">Maroc</option>
                                            </select>
                                        </div>

                                        <div class="col s6">
                                            <i class="material-icons prefix">account_circle</i>
                                            <input id="icon_prefix" type="text" name="firstname" class="validate"
                                                   required placeholder="First Name">
                                        </div>

                                        <div class="col s6">
                                            <i class="material-icons prefix">perm_identity</i>
                                            <input id="icon_prefix" type="text" name="lastname" class="validate"
                                                   required placeholder="Last Name">
                                        </div>

                                        <div class="col s6">
                                            <i class="material-icons prefix">lock</i>
                                            <input id="icon_prefix" type="password" name="password"
                                                   class="validate value1" required placeholder="Password">
                                        </div>

                                        <div class="col s6">
                                            <i class="material-icons prefix">lock</i>
                                            <input id="icon_prefix" type="password" name="confirmation"
                                                   class="validate value2" required placeholder="Confirm Password">
                                        </div>

                                        <div class="col s6">
                                            <i class="material-icons prefix">business</i>
                                            <input id="icon_prefix" placeholder="City" type="text" name="city"
                                                   class="validate" required>
                                        </div>

                                        <div class="col s6 meh">
                                            <i class="material-icons prefix">location_on</i>
                                            <input id="icon_prefix" type="text" name="address" class="validate"
                                                   required placeholder="Address">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="center-align">
                                            <button type="submit" id="confirmeds" name="signup"
                                                    class="btn meh button-rounded waves-effect waves-light ">Sign up
                                            </button>
                                        </div>
                                        <?php require 'includes/signupconfirmation.php'; ?>

                                        <p>By Registering, you agree that you've read and accepted our <a href="">User
                                                Agreement</a>,
                                            you're at least 18 years old, and you consent to our <a href="">Privacy
                                                Notice and receiving</a>
                                            marketing communications from us.</p>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <?php require 'includes/footer.php'; ?>
