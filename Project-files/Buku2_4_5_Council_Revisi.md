# Daftar Revisi Bab 4.5 — Hasil Council Review

**Dokumen sumber:** `Project-files/Buku2_4_5_Infrastruktur_Hulu_Midstream_Hilir.md`
**Panel:** Academic Editor + Harsh Referee + Methodologist (paper, N=3)
**Verdict gabungan:** MAJOR REVISIONS
**Catatan:** Daftar ini mengeluarkan revisi yang berkaitan dengan figur/peta/gambar (mis. placeholder Gambar 4.5.2–4.5.4). Fokus pada perbaikan teks, metodologi, data, dan struktur.

---

## A. Revisi Wajib (Blocker — harus selesai sebelum resubmission)

### A.1 Ungkapkan aturan agregasi indeks kesiapan, atau ganti namanya
**Sumber:** Methodologist + Harsh Referee
**Masalah:** Tabel 4.5.1 berisi 13 indikator × 3 tahap × 3 dimensi, tetapi tidak ada bobot, aturan voting, atau formula penggabungan. Sub-bab 4.5.6 sendiri mengakui skor "kualitatif/indikatif". Pembaca tidak dapat memverifikasi mengapa Kalimantan Tengah diklasifikasikan "Sebagian Siap" alih-alih kategori lain.
**Pilihan tindakan:**
- **Opsi A — Implementasikan skor reproducible.** Tetapkan bobot eksplisit per indikator/dimensi, formula agregasi (weighted sum, weakest-link, atau kombinasi), dan dokumentasikan derivasinya.
- **Opsi B — Lepas klaim sebagai indeks.** Ganti label menjadi "Peta Kesenjangan Deskriptif" atau "Klasifikasi Kualitatif Kesiapan", hapus istilah "indeks" di seluruh bab.
**Mengapa fatal:** Tanpa langkah ini, klasifikasi provinsi tidak reproducible — produk empiris pusat bab tidak dapat diverifikasi.

### A.2 Tambahkan estimasi permintaan B40 maritim per koridor
**Sumber:** Methodologist (lubang independen tunggal terbesar)
**Masalah:** Bab memetakan sisi pasokan secara eksaustif tetapi permintaan hanya disebut kualitatif (PELNI/ASDP/kapal niaga). Tanpa angka kebutuhan kL/tahun, kategori "Siap" bisa berarti pemenuhan 60% atau 200% — tidak ada denominator.
**Tindakan minimum:**
- Hitung: (jumlah armada × konsumsi BBM rata-rata per kapal-hari) × hari pelayaran/tahun × fraksi FAME 40% per koridor.
- Sumber data armada: PELNI 2025, ASDP 2025, INSA, Kemenhub.
- Sajikan sebagai tabel permintaan per koridor dalam 4.5.5 atau 4.5.6.
- Jika data spesifik koridor tidak tersedia, gunakan distribusi proxy (mis. proporsi panjang lintasan atau jumlah port-call) dan tandai sebagai estimasi.
**Mengapa fatal:** Tanpa denominator, peta kesenjangan tidak punya makna kuantitatif.

### A.3 Perbaiki atribusi kerangka analitik
**Sumber:** Harsh Referee, dikonfirmasi Methodologist
**Masalah:** Bab mengklaim mengadopsi BeWhere/Harahap (2023) dan mengutip Malczewski (1999, 2006) sebagai legitimasi GIS-MCDA, padahal yang sebenarnya diadopsi hanya diagram chain-of-custody hulu-midstream-hilir. MILP, optimisasi spasial, input data BeWhere semua dibuang. Tidak ada multi-criteria decision analysis spasial yang benar-benar dilakukan.
**Tindakan:**
- Nyatakan eksplisit bahwa yang dipinjam dari Harahap (2023) hanyalah **logika penelusuran rantai pasok spasial**, bukan inti MILP atau optimisasi.
- Pilih satu: **(a)** hapus rujukan Malczewski (1999, 2006) — atau **(b)** implementasikan MCDA spasial sebenarnya (weighted overlay, sensitivity analysis).
- Sebut kerangka aktual dengan jujur: "expert-judgment inventory assessment" atau "non-optimizing readiness audit", dan kutip literatur untuk pendekatan tersebut.
**Mengapa fatal:** Klaim metodologis saat ini menyesatkan referee dan pembaca akademik.

### A.4 Tutup celah keberlanjutan dan akuntansi GHG
**Sumber:** Harsh Referee
**Masalah:** Bab tentang biodiesel B40 untuk maritim tetapi sama sekali tidak membahas: emisi GHG rantai pasok, intensitas karbon per segmen, ILUC (indirect land use change), risiko deforestasi, EU EUDR (2023), klasifikasi sawit sebagai high-ILUC-risk di Renewable Energy Directive. ISPO disebut sebagai indikator "kesiapan" padahal lemah dibanding RSPO.
**Tindakan minimum:**
- **Pilih satu:** (a) tambahkan paragraf terstruktur tentang IMO 2023 GHG Strategy (net-zero 2050, target 5–10% bahan bakar alternatif 2030), EU EUDR, dan ILUC palm — atau (b) eksklusikan eksplisit dari batas sistem 4.5.1 dengan rujukan silang ke bab/sub-bab yang menanganinya.
- Jika mempertahankan ISPO sebagai indikator, akui keterbatasannya vs RSPO.
**Mengapa penting:** Operator pelayaran internasional (Maersk, CMA CGM, dst.) menerapkan kriteria ini. Tidak menyebutnya membuat "kesiapan" Indonesia tampak lebih tinggi dari yang sesungguhnya untuk pasar bunker internasional.

### A.5 Rekonsiliasi data kapasitas FAME yang inkonsisten
**Sumber:** Harsh Referee + Methodologist
**Masalah:** Tiga sumber kapasitas digunakan bergantian dengan gap >15%:
- APROBI 2022 (via Agrikan): 17,14 juta kL untuk 32 perusahaan
- APROBI 2024 (situs APROBI): 19,96 juta kL untuk 34 perusahaan
- Bisnis.com 2023: 16,67 juta kL
**Tindakan:**
- Pilih satu sumber otoritatif sebagai baseline analitik — direkomendasikan APROBI 2024 (paling mutakhir, sumber primer asosiasi).
- Jelaskan pemilihan dalam catatan kaki.
- Jika tetap memakai dua tahun untuk menunjukkan tren, sajikan eksplisit sebagai tabel time-series, bukan dicampur sebagai "fakta" yang sama.
- Isolasi alokasi FAME yang **benar-benar tersedia untuk maritim B40** dari total kapasitas (yang termasuk transportasi darat, industri, listrik). Rujuk Kepmen ESDM 439.K/EK.01/MEM.E/2025.

### A.6 Selesaikan kontradiksi internal "5 pelabuhan B40-ready"
**Sumber:** Methodologist
**Masalah:** Tabel 4.5.2 mengklaim seluruh 5 Pelabuhan Utama berstatus "B40 ready", tetapi teks tubuh 4.5.4 mengakui *"sebagian besar pelabuhan bunker secara realistis berada pada kategori Sebagian Siap — masih menyalurkan B30/B35"*. Dua pernyataan ini saling bertentangan.
**Tindakan:**
- Pilih satu klaim yang akurat per Mei 2026 dan konsisten ke seluruh bab.
- Jika bertahap (mis. transitional post-Januari 2025), tampilkan timeline eksplisit: kapan tiap pelabuhan benar-benar menyalurkan B40, status komisioning bunkering B40.
- Hindari rujukan ke "Buku I, Tabel 4.4" sebagai validasi — pembaca eksternal tidak bisa memverifikasi.

---

## B. Revisi Opsional (Penguatan, bukan blocker)

### B.1 Rampingkan Sub-bab 4.5.1 (Pendekatan dan Cakupan)
**Sumber:** Academic Editor
- Saat ini ~1/3 panjang bab — terlalu padat untuk peran sebagai pengantar metodologi.
- Klaim kontribusi utama (indeks kesiapan + peta kesenjangan) terkubur di paragraf keempat 4.5.1; pindahkan ke kalimat kedua/ketiga paragraf pembuka bab.
- Pertimbangkan memindahkan Tabel 4.5.1 versi penuh ke lampiran; sajikan versi ringkas (indikator + ambang, tanpa justifikasi panjang) di body.
- Redistribusikan proporsi: 4.5.6 (payoff utama) layak lebih panjang dari 4.5.3.

### B.2 Hapus blok "Catatan Internal: Justifikasi Ambang Analitik"
**Sumber:** Academic Editor
- Bagian ini masih ada di akhir dokumen meski sudah diberi komentar HTML. Hapus sepenuhnya dari versi final, atau pindahkan ke dokumen kerja terpisah di luar deliverable.

### B.3 Perkuat dasar ambang berlabel "judgment analitik"
**Sumber:** Harsh Referee
- "Judgment analitik" muncul 8× di Tabel 4.5.1 sebagai basis ambang penting:
  - Jarak PKS ke jalan: 5 km / 5–15 km / >15 km
  - Kapasitas blending: ≥500.000 kL/tahun vs <100.000 kL/tahun
  - Tanker threshold 5.000 DWT
- Tambahkan back-of-envelope (hitungan biaya angkut, throughput operasional) atau sitasi analogis dari studi serupa untuk menunjukkan ambang tidak arbitrer.

### B.4 Koreksi metodologi pengukuran jarak
**Sumber:** Methodologist
- Tabel 4.5.2 menyebut Tanjung Priok ">700 km via laut", caption Gambar 4.5.2 mengakui great-circle (skematik, bukan rute AIS).
- Great-circle sistematis under-estimasi steaming distance di perairan kepulauan dengan TSS, hindar pulau, dan jalur dangkal — terutama untuk koridor Balikpapan–Bitung.
- **Pilihan:** (a) ganti dengan rute AIS aktual dari MarineTraffic/PIS atau (b) pertahankan great-circle tetapi nyatakan sebagai bias-rendah dan tambahkan faktor koreksi konservatif.

### B.5 Tangani risiko MAUP dan validitas tipologi 5 koridor
**Sumber:** Methodologist
- **MAUP:** Klasifikasi level provinsi menyembunyikan heterogenitas intra-provinsi. Riau "Siap" via Dumai/Pelintung tetapi PKS pedalaman Riau (>300 km dari Dumai) "Belum Siap" individual. Kalimantan Timur "Siap" via Balikpapan tetapi Berau-Tarakan terdisintegrasi.
- **Validitas eksternal:** Pemilihan 5 Pelabuhan Utama berbasis KP 414/2013 — pre Patimban, NPCT Phase 1, Kuala Tanjung. Periksa apakah hierarki pelabuhan masih berlaku 2025/2026.
- Cukup tambahkan paragraf limitasi singkat di 4.5.1 atau 4.5.6.

### B.6 Bersihkan sumber dan referensi
**Sumber:** Harsh Referee + Methodologist
- **Sitasi sekunder:** BPS (2024) dikutip via GoodStats (2025). Untuk statistik fundamental seperti distribusi perusahaan sawit, kutip Statistik Perkebunan Kelapa Sawit BPS langsung.
- **Outlet obscure:** Asatu News (2026) untuk pengumuman B50. Korroborasi dengan rilis resmi ESDM atau Kontan/Bisnis.com yang mengutip sumber pemerintah.
- **Self-citation:** Rujukan ke "Buku I" / "Buku II" treated as authoritative untuk klaim kunci (mis. Tabel 4.5.1 indikator merujuk "Buku I, Tabel 4.4, hlm. 69"). Sebutkan sumber primer di balik Buku I tersebut.
- **Ghost reference:** Jeong et al. (2019) ada di reference list (item 20) tetapi tidak pernah disitasi di teks. Hapus atau tambahkan sitasi.
- **Treatment UCO:** Disebut sebagai alternatif tetapi tidak dibahas substantif. Tambahkan dua paragraf, atau eksklusikan eksplisit dengan rujukan silang ke "Buku II UCOME".

### B.7 Tambahkan ketidakpastian dan analisis sensitivitas
**Sumber:** Methodologist
- Saat ini tidak ada uncertainty band pada angka kapasitas atau klasifikasi.
- Sajikan kapasitas sebagai installed vs utilized vs maritime-allocated (saat ini disampaikan utilisasi 80–85% tetapi implikasinya tidak diteruskan).
- Tambahkan analisis sensitivitas minimal: bagaimana peta kesenjangan berubah jika utilisasi APROBI turun 82% → 65% (skenario kekeringan/disrupsi CPO) atau permintaan B40 maritim tumbuh 15%/tahun?
- Boundary test: bagaimana provinsi marginal (mis. Sumatera Selatan "Sebagian Siap") berubah kategori jika ambang ±20%?

---

## C. Verdict per Critic (Konteks)

| Critic | Verdict | Rasional |
|---|---|---|
| Academic Editor | MINOR REVISIONS | Argumen dan kontribusi solid; perubahan bersifat editorial — perampingan, redistribusi proporsi, penajaman kalimat pembuka. |
| Harsh Referee | MAJOR REVISIONS | Mislabelled index, framework name-dropping, absent GHG/sustainability, unreconciled data — bukan polish issues. |
| Methodologist | MAJOR REVISIONS | (a) tidak ada estimasi permintaan, (b) aturan agregasi tidak diungkap, (c) klaim "B40-ready" inkonsisten — produk empiris inti tidak dapat diverifikasi. |

---

## D. Urutan Pengerjaan yang Disarankan

| Prioritas | Tindakan | Rasional |
|---|---|---|
| 1 | A.2 (estimasi permintaan) + A.5 (rekonsiliasi data kapasitas) | Tanpa keduanya, gap map secara struktural tidak sah — kerjakan dulu sebagai fondasi |
| 2 | A.1 (aturan agregasi indeks) | Setelah punya angka kuantitatif (#1), agregasi bisa diturunkan dari data, bukan dari intuisi |
| 3 | A.6 (kontradiksi B40-ready) + A.3 (atribusi kerangka) | Konsistensi internal & kejujuran metodologis — relatif cepat |
| 4 | A.4 (GHG/sustainability) | Bisa diselesaikan dengan keputusan scope (eksklusi eksplisit) atau penambahan paragraf |
| 5 | B.1 + B.2 (perampingan + hapus catatan internal) | Editorial — kerjakan setelah substansi stabil |
| 6 | B.3–B.7 | Penguatan akhir sebelum finalisasi |
