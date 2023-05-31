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
                <h2 class="col"><a class="active" href="">Log In</a></h2>
                <div class="row">
                    <div id="test1" class="col s12 left-align">
                        <div class="card">
                            <div class="row">
                                <form class="col s12" method="POST">
                                    <div class="col s12">
                                        <i class="material-icons prefix">email</i>
                                        <input id="icon_prefix" placeholder="Email" type="text" name="emaillog" class="validate">
                                    </div>
                                    <div class="col s12 meh">
                                        <i class="material-icons prefix">lock</i>
                                        <input id="icon_prefix" placeholder="Password" type="password" name="passworddb" class="validate">
                                    </div>

                                    <?php require 'includes/loginconfirmation.php'; ?>
                                    <div class="center-align">
                                        <button type="submit" name="login"
                                                class="btn button-rounded waves-effect waves-light ">Login
                                        </button>
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
