<?php
/*
 * @package AJAX_Chat
 * @author Sebastian Tschan
 * @copyright (c) Sebastian Tschan
 * @license Modified MIT License
 * @link https://blueimp.net/ajax/
 */

// Include custom libraries and initialization code here
include "config.php";
$dbimg = mysqli_connect(
                        $config['dbConnection']['host'],
                        $config['dbConnection']['user'],
                        $config['dbConnection']['pass'],
                        $config['dbConnection']['name']
                        ); 