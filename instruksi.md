Instruksi Submission

Submission

Proyek Deploy Aplikasi Karsa Jobs dengan Kubernetes

* [Pengantar](https://www.dicoding.com/academies/433/tutorials/28535/submission-guidance#pills-pengantar)
* [Kriteria](https://www.dicoding.com/academies/433/tutorials/28535/submission-guidance#pills-kriteria)
* [Penilaian](https://www.dicoding.com/academies/433/tutorials/28535/submission-guidance#pills-penilaian)
* [Lainnya](https://www.dicoding.com/academies/433/tutorials/28535/submission-guidance#pills-lainnya)

Selamat! Akhirnya Anda telah sampai di proyek kedua di kelas ini. Ini semua berkat ketekunan dan kegigihan yang telah Anda kerahkan dalam memahami semua materi. Sejauh ini Anda sudah belajar banyak tentang seluk-beluk Kubernetes, mulai dari pengertian, arsitektur, hingga berbagai object yang dimiliki oleh Kubernetes.

Untuk mengasah sekaligus memvalidasi kemampuan, Anda harus mengerjakan tugas kedua yakni Proyek Deploy Aplikasi Karsa Jobs dengan Kubernetes sesuai kriteria yang akan disampaikan nanti. Kemudian, Tim Reviewer akan memeriksa pekerjaan Anda serta memberikan review pada proyek yang Anda buat.

Proyek kedua ini akan menguji kemampuan Anda terhadap berbagai hal yang telah dipelajari pada modul-modul sebelumnya. Kami telah menyiapkan starter project yang akan Anda pakai di proyek ini. Starter project ini wajib dipakai dan dikembangkan sedemikian rupa sehingga hasilnya dapat memenuhi berbagai kriteria yang kami berikan.

Starter project ini adalah aplikasi web sederhana bernama Karsa Jobs yang memungkinkan pengguna untuk melihat dan menambahkan informasi lowongan pekerjaan.

Aplikasi Karsa Jobs memiliki berbagai komponen sebagai berikut.

* Frontend ditulis menggunakan Vue.js. Frontend akan menerima permintaan langsung dari pengguna dan mengambil data yang diperlukan dari API.
* API yang ditulis dalam bahasa pemrograman Go. API digunakan untuk mengolah data dari database yang nantinya akan diberikan ke Frontend.
* Database yang menggunakan teknologi MongoDB. Database digunakan untuk menyimpan semua data dari platform.

Seperti ini gambarannya.

Sekali lagi kami ingatkan, Anda tak perlu mencemaskan kode aplikasinya. Yang perlu Anda kerjakan adalah bagaimana men-deploy aplikasi ini ke dalam Kubernetes di lokal dengan bantuan minikube. Bila Anda paham dengan Vue.js dan Go, tak perlu ragu untuk eksplorasi source code yang kami berikan.

Bila Anda mengikuti setiap materi pada modul sebelumnya dengan baik, kami yakin Anda pasti bisa mengerjakan tugas ini dengan maksimal dan mendapatkan nilai terbaik. Jika Anda merasa bingung, silakan kunjungi modul-modul sebelumnya atau bertanya di forum diskusi.

Oke, langsung saja. Untuk melihat apa saja kriteria pada proyek kedua ini, silakan lanjut buka tab  **Kriteria** .

> **Catatan!**
> Meskipun proyek kedua ini tidak merepresentasikan arsitektur microservices berskala production seperti aplikasi besar atau enterprise di luar sana, tetapi ini dapat membantu Anda untuk mengasah kemampuan dan terbiasa dengan Kubernetes. Kami yakin, bila Anda mengerjakan proyek kedua ini dengan sungguh-sungguh, setelah lulus dari kelas ini Anda akan mampu membangun arsitektur microservices berskala apa pun untuk kasus penggunaan apa pun. Pasalnya, semua dasar-dasarnya sudah Anda pegang melalui kelas ini

Instruksi Submission

Submission

Proyek Deploy Aplikasi Karsa Jobs dengan Kubernetes

Pengantar Kriteria Penilaian Lainnya
Terdapat 3 kriteria utama yang harus Anda penuhi dalam mengerjakan proyek kedua ini.



Kriteria 1: Menggunakan Starter Project (Karsa Jobs)
Dalam mengerjakan proyek kedua ini, Anda wajib menggunakan source code dari starter project yang telah kami siapkan. Berbeda dengan sebelumnya, starter project yang digunakan pada proyek kedua ini adalah Karsa Jobs. Starter project ini berada di GitHub repository milik Dicoding Academy. Untuk itu, Anda harus fork repository tersebut ke akun GitHub Anda terlebih dahulu (jangan lupa untuk tidak mencentang opsi copy the main branch only), lalu clone ke lokal.

Berikut tautan repository dari starter project yang dimaksud:

https://github.com/dicodingacademy/a433-microservices/tree/karsajobs (pastikan Anda clone spesifik untuk branch karsajobs (backend)).
https://github.com/dicodingacademy/a433-microservices/tree/karsajobs-ui (pastikan Anda clone spesifik untuk branch karsajobs-ui (frontend)).

Kriteria 2: Membuat Script untuk Build dan Push Docker Image
Selanjutnya, tugas Anda adalah membuat berkas shell script bernama build_push_image_karsajobs.sh (untuk backend) yang tersimpan di karsajobs source code dan build_push_image_karsajobs_ui.sh (untuk frontend) yang tersimpan di karsajobs-ui source code.

Pada dasarnya, kedua berkas tersebut berisi beberapa baris perintah untuk keperluan membuat Docker image (build) dan kemudian mengunggahnya (push) ke Docker Hub (atau GitHub Package bila menerapan saran kedua).

Berikut adalah uraian yang mesti ada pada berkas script Anda.

Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker></username>/karsajobs:latest (untuk backend) dan <username-docker></username>/karsajobs-ui:latest (untuk frontend).
Perintah untuk login ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
Perintah untuk push image ke Docker Hub (atau GitHub Package bila menerapan saran kedua).
Ingat bahwa tahapan di atas mesti dilakukan secara berurutan.

Kriteria 3: Deploy Aplikasi ke Kubernetes
Oke, sekarang aplikasi Karsa Jobs (baik frontend maupun backend) sudah menjadi image yang tersimpan di Docker Hub (atau GitHub Package bila menerapan saran kedua). Good!

Sekarang tugas Anda adalah deploy aplikasi tersebut ke Kubernetes di lokal dengan bantuan minikube. Untuk memudahkan, silakan buat directory baru (di luar directory karsajobs dan karsajobs-ui) bernama kubernetes.

Di dalam berkas tersebut, buatlah berbagai berkas manifest yang dibutuhkan untuk men-deploy aplikasi ke Kubernetes. Berikut panduan dari kami (yang diberi tanda tebal adalah directory).

kubernetes

├── backend

│   ├── karsajobs-service.yml

│   └── karsajobs-deployment.yml

├── frontend

│   ├── karsajobs-ui-service.yml

│   └── karsajobs-ui-deployment.yml

└── mongodb

    ├── mongo-configmap.yml

    ├── mongo-secret.yml

    ├── mongo-pv-pvc.yml

    ├── mongo-service.yml

    └── mongo-statefulset.yml

Instruksi Submission

Submission

Proyek Deploy Aplikasi Karsa Jobs dengan Kubernetes

Pengantar Kriteria Penilaian Lainnya
Proyek Anda akan dinilai oleh Reviewer guna menentukan kebenaran submission yang dikerjakan. Supaya bisa lulus dari submission ini, proyek Anda mesti memenuhi seluruh kriteria yang ada. Apabila ada ketentuan dalam kriteria yang belum terpenuhi, proyek Anda akan kami tolak.

Submission Anda akan dinilai oleh Reviewer dengan penilaian bintang berskala 1-5. Untuk mendapatkan nilai tinggi, Anda bisa menerapkan beberapa saran berikut:

Memberikan penjelasan dalam bentuk komentar untuk setiap perintah atau properti yang ada pada berkas script dan manifest.
Alih-alih Docker Hub, Anda menggunakan GitHub Packages (GitHub Container Registry) untuk penyimpanan image.
Mengimplementasikan monitoring dengan deploy Prometheus dan Grafana di Kubernetes. Silakan deploy keduanya di dalam Namespace bernama monitoring untuk mempermudah.
Menerapkan Continuous Integration untuk branch karsajobs dan karsajobs-ui.
Anda bisa menggunakan CI platform berbasis web seperti CircleCI (direkomendasikan) atau GitHub Actions. Diperbolehkan juga bila Anda ingin menggunakan Jenkins, tetapi ia harus di-deploy di Kubernetes secara lokal.
Ketentuan untuk branch karsajobs. CI pipeline Anda haruslah memiliki langkah-langkah sebagai berikut.
lint-dockerfile berisi proses untuk menginstal hadolint dan menjalankannya terhadap berkas Dockerfile.
test-app berisi perintah untuk menjalankan unit test untuk backend dengan perintah: go test -v -short --count=1 $(go list ./...)
build-app-karsajobs berisi perintah untuk build dan push image.
Ketentuan untuk branch karsajobs-ui. CI pipeline Anda haruslah memiliki langkah-langkah sebagai berikut.
lint-dockerfile berisi proses untuk menginstal hadolint dan menjalankannya terhadap berkas Dockerfile.
build-app-karsajobs-ui berisi perintah untuk build dan push image.
Berikut adalah detail penilaian submission:

rating-default-1
Semua ketentuan wajib terpenuhi, tetapi terdapat indikasi kecurangan atau plagiasi dalam mengerjakan submission.

rating-default-2
Semua ketentuan wajib terpenuhi, tetapi tidak menerapkan saran sama sekali.

rating-default-3
Semua ketentuan wajib terpenuhi dan menerapkan minimal 2 saran di atas.

rating-default-4
Semua ketentuan wajib terpenuhi dan menerapkan minimal 3 saran di atas.

rating-default-5
Semua ketentuan wajib terpenuhi dan menerapkan semua saran di atas.

Catatan:
Jika submission Anda ditolak maka tidak ada penilaian. Kriteria penilaian bintang di atas hanya berlaku jika submission Anda lulus.

Instruksi Submission

Submission

Proyek Deploy Aplikasi Karsa Jobs dengan Kubernetes

Pengantar Kriteria Penilaian Lainnya
Tips
Berikut adalah beberapa tips yang perlu Anda perhatikan:

Ketika hendak deploy karsajobs-ui (frontend), pastikan Anda mengubah nilai VUE_APP_BACKEND yang ada di berkas .env dengan nilai Node IP dan Node Port sesuai pada komputer Anda.
Untuk mempermudah penggunaan Node Port, Anda boleh menetapkan custom Node Port sendiri. Silakan baca referensinya di laman ini.
Untuk mengerjakan Kriteria 2, Anda bisa gunakan environment variable untuk merahasiakan password Docker Hub. Jalankan perintah ini di Terminal.
export PASSWORD_DOCKER_HUB=<password_Anda>
Bila menerapkan saran keempat menggunakan CircleCI, Anda bisa manfaatkan fitur Environment Variables pada Project Settings.

Setelah itu, Anda bisa gunakan perintah ini di dalam berkas script untuk login ke Docker Hub.
echo $PASSWORD_DOCKER_HUB | docker login -u fikrihelmi17 --password-stdin
Pada berkas karsajobs-deployment.yml, pastikan Anda menentukan environment variable sebagai berikut.
APP_PORT dengan nilai “8080”.
MONGO_HOST dengan nilai yang diambil dari MongoDB Service.
MONGO_USER dengan nilai yang diambil dari MongoDB Secret (MONGO_ROOT_USERNAME).
MONGO_PASS dengan nilai yang diambil dari MongoDB Secret (MONGO_ROOT_PASSWORD).
Pada berkas mongo-secret.yml, Anda bisa isi MONGO_ROOT_USERNAME dengan admin dan MONGO_ROOT_PASSWORD dengan supersecretpassword dalam bentuk base64.
Pada berkas mongo-configmap.yml, pastikan Anda memperlakukan data sebagai file mongo.conf yang memiliki properti storage dengan key dbPath dan nilai /data/db. Seperti ini contohnya.
data:

  mongo.conf: |

    storage:

      dbPath: /data/db

Pada berkas mongo-statefulset.yml, pastikan Anda menentukan properti sebagai berikut.
Environment variable
MONGO_INITDB_ROOT_USERNAME_FILE dengan nilai /etc/mongo-credentials/MONGO_ROOT_USERNAME.
MONGO_INITDB_ROOT_PASSWORD_FILE dengan nilai /etc/mongo-credentials/MONGO_ROOT_PASSWORD.
Volume mount
Persistent Volume dengan mount path /data/db.
ConfigMap dengan mount path /config.
Secret dengan mount path /etc/mongo-credentials.
Untuk menerapkan saran ketiga, Anda bisa deploy menggunakan helm (package manager untuk Kubernetes) supaya mempermudah. Selain itu, Anda bisa gunakan template ini dalam membuat Grafana Dashboard.
Pembuatan berkas shell script dan komentar sudah dipelajari dalam kelas Menjadi Linux System Administrator.
Bacalah materi pada modul-modul sebelumnya jika Anda lupa dengan sintaks yang akan dieksekusi.
Jangan sungkan untuk bertanya di Forum Diskusi atau mengunjungi dokumentasi bila Anda stuck.

Ketentuan Pengiriman Submission
Beberapa poin yang perlu diperhatikan ketika mengirimkan submission antara lain:

Sertakan link GitHub repository pribadi hasil forking Anda pada kolom Catatan submission, misalnya https://github.com/<username></username>/a433-microservices.
Berikut adalah berkas-berkas yang wajib ada ketika mengirimkan berkas submission.
Berkas-berkas yang sudah disediakan di starter project sesuai kriteria 1.
Berkas build_push_image_karsajobs.sh (untuk backend) yang tersimpan di karsajobs source code dan build_push_image_karsajobs_ui.sh (untuk frontend) yang tersimpan di karsajobs-ui source code sesuai kriteria 2.
Direktori kubernetes yang berisi semua manifest yang telah dibuat sesuai kriteria 3.
Berkas link.txt yang berisi tautan Docker Hub (atau GitHub Packages bila menerapkan saran kedua) untuk container image Anda.
Berkas monitoring.txt yang berisi informasi mengenai semua object yang dibuat pada Namespace monitoring (Anda bisa jalankan perintah: kubectl get all -n monitoring > monitoring.txt untuk membuat berkas monitoring.txt) dan screenshot dari Grafana Dashboard bila menerapkan saran ketiga. Contoh screenshotnya seperti ini:
dos:3542f15c1e8df3a9c89ff6bdb0a4710e20231127081115.png
Berkas konfigurasi CI baik pada branch karsajobs maupun karsajobs-ui (Misal berkas .circleci/config.yml saat menggunakan CircleCI) dan screenshot dari proses CI yang sukses berjalan bila menerapkan saran keempat. Contoh screenshotnya seperti ini (saat menggunakan CircleCI):dos:df96f5df8683191b7771f43bb1a4c59220231127081211.png
Perhatikan, GitHub repository dan Docker Hub (atau GitHub Packages) milik Anda harus bersifat public agar memudahkan reviewer dalam menilai. Pastikan semua berkas yang diminta terdapat di dalam repository Anda.

Format Berkas Submission
Berkas submission yang dikirimkan merupakan folder yang berisi kumpulan berkas yang diminta dalam bentuk ZIP. Pastikan Anda tidak melakukan ZIP dalam ZIP.

Submission Anda akan Ditolak bila
Kriteria wajib tidak terpenuhi.
Ketentuan pengiriman submission tidak terpenuhi.
Berkas yang diminta tidak bisa dibuka, error, atau isinya benar-benar berantakan.
Melakukan kecurangan seperti tindakan plagiarisme.

Forum Diskusi
Jika mengalami kesulitan, Anda bisa menanyakan langsung ke forum diskusi https://www.dicoding.com/academies/433/discussions?tutorial=28535.

Ketentuan Proses Review
Beberapa hal yang perlu Anda ketahui mengenai proses review:

Tim Reviewer akan mengulas submission Anda dalam waktu selambatnya 3 (tiga) hari kerja (tidak termasuk Sabtu, Minggu, dan hari libur nasional).
Tidak disarankan untuk melakukan submit berkali-kali karena akan memperlama proses penilaian.
Anda akan mendapatkan notifikasi hasil review submission via email. Status submission juga bisa dilihat dengan mengecek di halaman submission.
