<p align="center">
<img src="https://user-images.githubusercontent.com/76937659/153705486-44e6c1b2-74fa-4d44-be1c-36c8fdb83331.gif"/>
</p>

<p align="center">XRAY LITE</p>

### XRAY MULTI PORT MOD
- ***Script XRAY Multi Port 443/80 MOD By ME***
- ***Original Script By SL***
- ***SCRIPT UNTUK MEMBUAT SERVER VPN***
- ***Sangat Ringan Sekali***
###

### FITUR XRAY TLS
- TROJAN WS        : **443**
- TROJAN GRPC      : **443**
- SHADOWSOCKS WS   : **443** (OFF)
- SHADOWSOCKS GRPC : **443** (OFF)
- VMESS WS         : **443**
- VMESS GRPC       : **443**
- VLESS WS         : **443**
- VLESS GRPC       : **443**

### FITUR XRAY HTTP
- TROJAN WS        : **80**
- TROJAN GRPC      : **80**
- SHADOWSOCKS WS   : **80** (OFF)
- SHADOWSOCKS GRPC : **80** (OFF)
- VMESS WS         : **80**
- VMESS GRPC       : **80**
- VLESS WS         : **80**
- VLESS GRPC       : **80**

### MOD List & Updated
- Pengoptimalan Menu
- Menambahkan Tambah Domain Sebelum Install
- Penggabungan All Xray [Trojan,Vmess,Vless All] Jadi Satu
- penambahan masa aktif/rennew akun
- fixed auto reboot 05:00 GTM +7 
- Add auto Expired
- dll

### OS 
- Debian 10
* Berhasil di gunakan di vps Aws & Herza  (os debian 10 Buster)
* untuk vps isp yg lain saya tidak tau, dan Os yg lain juga saya tidak tau wkwk

### Syarat && Bahan Untuk Menggunakan Script Ini
- Wajib Punya VPS
- Wajib Punya Akun Cloudflare
- Wajib Punya Domain Punya Kamu Sendiri
- ***Jika semua syarat dan Bahan sudah terpenuhi ,silahkan di coba script ini***

### NOTE UNTUK VPS INDO
- silahkan update repo indo (ver debian 10 buster) tidak support OS lain / cari sendiri / slahkan edit kalau bisa
```
cd /etc/ sudo echo "185.199.108.133 raw.githubusercontent.com" | tee -a /etc/hosts sudo echo "185.199.109.133 raw.githubusercontent.com" | tee -a /etc/hosts sudo echo "185.199.110.133 raw.githubusercontent.com" | tee -a /etc/hosts sudo echo "185.199.111.133 raw.githubusercontent.com" | tee -a /etc/hosts wget https://raw.githubusercontent.com/Amoebacoy/lite/main/repoindo.sh && chmod +x repoindo.sh && ./repoindo.sh
```
### Cara Install Script Nya
- Login ke VPS kamu ( wajib pake user ***root***)
1. MASUK KE VPS LALU KETIK
```
sudo su
```

2. Update Dulu VPS NYA

```
apt-get update && apt-get upgrade -y && update-grub && sleep 2 && reboot
```
- Otomatis Akan Reboot/ Hidupkan Ulang

3. Login Lagi Ke VPS NYA

4. Salin kode di bawah ini dan paste kan ke dalam vps punya kamu
- maka proses install akan berjalan, jangan keluar dari vps
- jika keluar dari vps saat lagi proses install,maka akan gagal
```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/Amoebacoy/lite/main/lite.sh && chmod +x lite.sh && ./lite.sh
```
5. jika sudah selesai,lalu ketik xmenu untuk menampilkan menu

```
menu
```
7. DONE / SELESAI

### Info Perbaiki / FIX
- ***NOTE***
- jika xray dan nginx mengalami error !
- ketik
```
certxray
```
lalu ketik
```
restart-xray
```

