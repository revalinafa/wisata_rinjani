# 🏔️ Wisata Rinjani
### *Your Digital Guide to Mount Rinjani Adventures*

> A Flutter mobile application that presents information about Mount Rinjani tourism with modern UI and smooth navigation using GetX.

---
## ✍️ Dibuat Oleh

**Revalina Fidiya Anugrah**  
NIM: **H1D023011**

## 🔰 Tech & Tools Used

| Teknologi | Keterangan |
|----------|-------------|
| Flutter | Framework UI |
| Dart | Bahasa Pemrograman |
| GetX | State Management & Routing |
| Modular GetX | Arsitektur folder |
| Poppins Font | Typography |
| Earthy UI Theme | Desain Warna |

---

## 📱 Homepage

<img width="825" height="1089" alt="Screenshot 2025-11-05 145203" src="https://github.com/user-attachments/assets/81e392d1-2f5f-4afe-9982-21e1440a2109" />

#### 📍 Sidebar
<img width="825" height="1089" alt="Screenshot 2025-11-05 151537" src="https://github.com/user-attachments/assets/3de9e791-af3e-4adc-8ca0-c9d796ba7c84" />


#### 🗻 Detail Wisata – Mockup Placeholder
<img width="825" height="1089" alt="Screenshot 2025-11-05 151322" src="https://github.com/user-attachments/assets/b34bd4a2-63a3-4678-8370-0cefdb275c6b" />


#### 🎟️ Tiket & Harga – Mockup Placeholder
<img width="825" height="1089" alt="Screenshot 2025-11-05 151352" src="https://github.com/user-attachments/assets/2575bdd1-88f4-4489-815e-1705567cd6c2" />


#### 🖼️ Galeri – Mockup Placeholder
<img width="825" height="1089" alt="Screenshot 2025-11-05 151406" src="https://github.com/user-attachments/assets/c514f290-285c-4af5-a0f7-19d38cf2bf7f" />


#### ℹ️ Tentang Aplikasi – Mockup Placeholder
<img width="825" height="1089" alt="Screenshot 2025-11-05 151436" src="https://github.com/user-attachments/assets/b7fee712-049c-4338-a34d-c3b29b8c5afe" />


---


## 🚀 Fitur Utama

✨ Modern Card UI  
✨ GetX Navigation (Get.toNamed)  
✨ Floating Bottom Navigation Bar  
✨ 5 Halaman Utama:  
- Home (Daftar Wisata)  
- Detail Wisata  
- Tiket & Harga  
- Galeri Foto  
- Tentang Aplikasi  

🎁 **Bonus:** Custom Widget → `DestinationCard`

---

## 🎨 UI Style Guide

### 🌈 Warna Utama

| Nama | Hex | Digunakan pada |
|--------|--------|--------------------------|
| Cream | `#F7F1DE` | Background |
| Latte Brown | `#C4A484` | Aksen & Icon Aktif |
| Cinnamon Brown | `#B87C4C` | AppBar & BottomNav |

### 🔤 Typography

Font: **Poppins**  
Ukuran rekomendasi:  
- Title: 22–26 bold  
- Regular Text: 14–16  
- Caption: 12  

---

## 🧭 Navigasi Aplikasi

```mermaid
flowchart LR
A[Home] --> B[Detail Wisata]
A --> C[Tiket & Harga]
A --> D[Galeri]
A --> E[Tentang Aplikasi]
```

Routing seluruh halaman menggunakan **Get.toNamed()**.

---

## 📂 Struktur Folder Proyek

```
lib/
├── main.dart
└── app/
    ├── routes/
    │   └── app_pages.dart
    ├── modules/
    │   ├── about/
    │   │   ├── about_binding.dart
    │   │   ├── about_controller.dart
    │   │   └── about_view.dart
    │   ├── detail/
    │   │   ├── detail_binding.dart
    │   │   ├── detail_controller.dart
    │   │   └── detail_view.dart
    │   ├── gallery/
    │   │   ├── gallery_binding.dart
    │   │   ├── gallery_controller.dart
    │   │   └── gallery_view.dart
    │   ├── home/
    │   │   ├── home_binding.dart
    │   │   ├── home_controller.dart
    │   │   └── home_view.dart
    │   ├── ticket/
    │   │   ├── ticket_binding.dart
    │   │   ├── ticket_controller.dart
    │   │   └── ticket_view.dart
    ├── widgets/
    │   └── destination_card.dart
```

---

## ▶️ Cara Menjalankan

```bash
flutter pub get
flutter run
```

---



