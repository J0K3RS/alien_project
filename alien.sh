#!/bin/bash
#Follow @jerkkids in ig
clear
alien(){
echo "                _____ "
sleep 0.03
echo "             .-/     \-. "
sleep 0.03
echo "            / o       o \ "
sleep 0.03
echo "           /   \     /   \ "
sleep 0.03
echo "          /     )---(     \ "
sleep 0.03
echo "         /     ( 6 6 )     \ "
sleep 0.03
echo "        /       \ : /       \ "
sleep 0.03
echo "       /         )=(         \ "
sleep 0.03
echo "      /   o   .--" "--.   o   \ "
sleep 0.03
echo "     /    I  /  -   -  \  I    \ "
sleep 0.03
echo " .--(    (_}y/\       /\y{_)    )--. "
sleep 0.03
echo "(     ____l\/__\_____/__\/l____      ) "
sleep 0.03
echo " \                                 / "
sleep 0.03
echo "  \-._      o O o O o O o      _/ "
sleep 0.03
echo "       \--Y--.___________.--Y--/  "
sleep 0.03
echo "         |==.___________.==| "
sleep 0.03
echo "         ===.___________.=== "
sleep 0.02
echo "====================================="
sleep 0.2
echo "==          Alien Project          =="
sleep 0.09
echo "====================================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_url=$(curl -s http://zlucifer.com/api/hackbae.php?request=nik)
tips(){
        echo "TIPS: "
        echo " Minta nomor rekening (Atas Nama) dan "
        echo " NIK penjual untuk di cek keasliannya"
        echo
        echo " Penjual tidak mau memberi NIK = Waspada"
        echo " Nama pemilik NIK tidak muncul = Waspada"
        echo " Nama pemilik NIK dan Nama pemilik rekening berbeda = Waspada"
        echo " Nama pemilik NIK sama dengan Nama pemilik rekening = Penjual asli"
        echo " Meskipun penjual asli, tetap waspada"
}
close(){
        exit
}
akhir(){
        echo " Terimakasih Telah Menggunakan Tools Saya "
        echo
        echo " Salam Hangat "
        echo " -JerkKids "
}
mulai(){
    echo "Masukan angka 1 untuk tips, dan 2 untuk melakukan pengecekan"
    echo " [1] Tips"
    echo " [2] Cek"
    echo " [3] Close Alien Project"
    echo "1/2/3?"
    read info
    if [ $info = "1" ]; then
            clear
            alien
            tips
            mulai
    elif [ $info = "3" ]; then
            echo "Terimakasih sudah menggunakan Alien Project"
            close
    else
            clear
            alien
            echo
            echo "Silahkan masukan NIK target"
            echo " Contoh 1234567890876543"
            read target # masukin NIK
            echo "Silahkan masukan Nama target"
            read nama #nama
            echo
            echo Apakah NIK $target "& Nama "$nama "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  echo Melakukan Pengecekan NIK $target "& Nama "$nama
                  load
                  clear
                  alien
                  cek_target=`curl -s $get_url/nik.php?nik=$target"&nama="$nama`
                  echo -e $cek_target
            else
                  echo Kesalahan, silahkan coba lagi
            fi
            akhir
            mulai
    fi
}
clear
echo "Loading.."
load
clear
alien
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
clear
alien
echo " Tools Pencegah Penipuan Online "
echo Selamat datang $nick ":)"
mulai
akhir
