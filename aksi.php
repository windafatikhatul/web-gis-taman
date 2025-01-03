<?php
require_once'functions.php';
 

    /** LOGIN */ 
    if ($mod=='login'){
        $user = esc_field($_POST['user']);
        $pass = esc_field($_POST['pass']);
        
        $row = $db->get_row("SELECT * FROM tb_user WHERE user='$user' AND pass='$pass'");
        if($row){
            $_SESSION['login'] = $row->user;
            redirect_js("index.php");
        } else{
            print_msg("Username atau Password Anda Salah.");
        }          
    }  else if ($mod=='password'){
        $pass1 = $_POST[pass1];
        $pass2 = $_POST[pass2];
        $pass3 = $_POST[pass3];
        
        $row = $db->get_row("SELECT * FROM tb_user WHERE user='$_SESSION[user]' AND pass='$pass1'");        
        
        if($pass1=='' || $pass2=='' || $pass3=='')
            print_msg('Field bertanda * harus diisi.');
        elseif(!$row)
            print_msg('Password lama salah.');
        elseif( $pass2 != $pass3 )
            print_msg('Password baru dan konfirmasi password baru tidak sama.');
        else{        
            $db->query("UPDATE tb_user SET pass='$pass2' WHERE user='$_SESSION[user]'");                    
            print_msg('Password berhasil diubah.', 'success');
        }
    } elseif($act=='logout'){
        unset($_SESSION['login']);
        header("location:index.php?m=login");
    }
           
    /** PAGE */
    elseif($mod=='page_ubah'){
        $judul = $_POST['judul'];
        $isi = $_POST['isi'];
                        
        if($judul=='' || $isi=='' )
            print_msg("Field yang bertanda * tidak boleh kosong!");
        else{
            $db->query("UPDATE tb_page SET judul='$judul', isi='$isi' WHERE nama_page='$_GET[nama]'");                   
            print_msg("Data tersimpan", 'success');
        }
    } 
    
    /** PURA */    
    if($mod=='tempat_tambah'){
        $nama_tempat = $_POST['nama_tempat'];
        $gambar = $_FILES['gambar'];
        $lat = $_POST['lat'];
        $lng = $_POST['lng'];
        $lokasi = $_POST['lokasi'];
        $keterangan = esc_field($_POST['keterangan']);
        
        if($nama_tempat=='' || $gambar['name']=='' || $lat=='' || $lng=='' || $lokasi=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{
            $file_name = rand(1000, 9999) . parse_file_name($gambar['name']);
            $img = new SimpleImage($gambar['tmp_name']);
            if($img->get_width()>800)
                $img->fit_to_width(800);
            if($img->get_height()>600);
                $img->fit_to_height(600);
            $img->save('assets/images/tempat/' . $file_name);            
            $img->thumbnail(180, 120);
            $img->save('assets/images/tempat/small_' . $file_name);
            
            $db->query("INSERT INTO tb_tempat (nama_tempat, gambar, lat, lng, lokasi, keterangan) 
                    VALUES ('$nama_tempat', '$file_name', '$lat', '$lng', '$lokasi', '$keterangan')");                       
            redirect_js("index.php?m=tempat");
        }   
                         
    } else if($mod=='tempat_ubah'){
        $nama_tempat = $_POST['nama_tempat'];
        $gambar = $_FILES['gambar'];
        $lat = $_POST['lat'];
        $lng = $_POST['lng'];
        $lokasi = $_POST['lokasi'];
        $keterangan = esc_field($_POST['keterangan']);
        
        if($nama_tempat=='' || $lat=='' || $lng=='' || $lokasi=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{           
            if($gambar['name']!=''){
                hapus_gambar($_GET['ID']);
                                
                $file_name = rand(1000, 9999) . parse_file_name($gambar['name']);
                $img = new SimpleImage($gambar['tmp_name']);
                if($img->get_width()>800)
                    $img->fit_to_width(800);
                if($img->get_height()>600);
                    $img->fit_to_height(600);
                $img->save('assets/images/tempat/' . $file_name);            
                $img->thumbnail(180, 120);
                $img->save('assets/images/tempat/small_' . $file_name);
                
                $sql_gambar = ", gambar='$file_name'";
            }
            $db->query("UPDATE tb_tempat SET nama_tempat='$nama_tempat' $sql_gambar , lat='$lat', lng='$lng', lokasi='$lokasi', keterangan='$keterangan' WHERE id_tempat='$_GET[ID]'");
            redirect_js("index.php?m=tempat");
        }    
    } else if ($act=='tempat_hapus'){
        hapus_gambar($_GET['ID']);
        $db->query("DELETE FROM tb_tempat WHERE id_tempat='$_GET[ID]'");
        header("location:index.php?m=tempat");
    } 
    