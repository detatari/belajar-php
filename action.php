<?php

if (isset($_GET['p'])) {

    if ($_GET['p'] == 'tampil') { //standar

        echo $_POST['nama'];
        echo "<br/>";
        echo $_POST['password'];
       
    } else if ($_GET['p'] == "pesan") { //ada pesannya
        echo "Halo Apa Kabar".$_POST['nama'];  
        echo "<br/>";
        echo "password anda adalah".$_POST['password'];

    } else if ($_GET['p'] == "aman") { //tambahan error

        if (!empty( $_POST['nama'])) {
            echo $_POST['nama'];
            } else {
                echo "nama belum diinput";
            }

            echo "<br/>";

            if (!empty( $_POST['password'])) {
            echo $_POST['password'];
            } else {
                echo "password masih kosong";
            }
    } else if ($_GET['p']== "gambar")  { //gambar
        $size = getimagesize($_FILES['berkas']['tmp_name']); //get size
        $image = "data:".$size['mime'].";base64,". 
                base64_encode(file_get_contents($_FILES['berkas']['tmp_name'])); //get image

        echo "<image src='".$image."' width='320'>";
    }

}   else {
    echo "Anda tidak dapat mengakses halaman ini";
}






