# sk_blip

📍 A lightweight and easy-to-use **blip creation system** for FiveM QBCore Framework.  
Let players place a temporary map blip with a custom label using `/blip`, and remove it with `/delblip`.  
The blip will automatically expire after 30 minutes.

📍 ระบบสร้างจุดบนแผนที่ (Blip) ชั่วคราวสำหรับเซิร์ฟเวอร์ **FiveM QBCore Framework**  
ให้ผู้เล่นสร้าง blip พร้อมชื่อธุรกิจได้ด้วยคำสั่ง `/blip` และลบด้วย `/delblip`  
Blip จะหมดอายุอัตโนมัติภายใน 30 นาที

--

## [EN] Features
- ✅ `/blip [Business Name]` to place a map marker
- ⏱️ Blip expires automatically after **30 minutes**
- ⚠️ Warns 5 minutes before expiration
- ❌ `/delblip` to remove your own blip
- 🔁 Blip syncs when resource restarts
- 📡 Server-client sync via custom events

## [TH] คุณสมบัติ
- ✅ ใช้คำสั่ง `/blip [ชื่อธุรกิจ]` เพื่อวาง blip บนแผนที่
- ⏱️ blip จะหมดอายุอัตโนมัติภายใน **30 นาที**
- ⚠️ แจ้งเตือนก่อนหมดอายุ 5 นาที
- ❌ ใช้ `/delblip` เพื่อลบ blip ของตนเอง
- 🔁 ซิงก์ blip ใหม่เมื่อ resource ถูกรีสตาร์ท
- 📡 เชื่อมข้อมูลระหว่าง client ↔ server ด้วย custom events

--

## 📦 [EN] Requirements
- FiveM server with **QBCore** framework
- Recommended FXServer version: `cerulean`

## 📦 [TH] ความต้องการ
- เซิร์ฟเวอร์ FiveM ที่ใช้ **QBCore Framework**
- แนะนำให้ใช้ FXServer version: `cerulean`

---

## ⚙️ [EN] Installation

1. Clone or download the resource into your `resources` folder:
   ```bash
   git clone https://github.com/yourusername/sk_blip.git
2. Add this to your server.cfg: `ensure sk_blip`
3. Done! Ready to use.

 ## ⚙️ [TH] วิธีติดตั้ง
1. แตกไฟล์หรือโคลนโปรเจกต์ไปไว้ในโฟลเดอร์ `resources`
2. เพิ่มบรรทัดนี้ในไฟล์ server.cfg: `ensure sk_blip`
3. เสร็จแล้ว พร้อมใช้งานได้ทันที

## 💬 [EN] Commands
`/blip [Business Name]`	Create a blip with the specified label
`/delblip`	Remove your active blip from the map

## 💬 [TH] คำสั่ง
`/blip [ชื่อธุรกิจ]`	สร้าง blip ที่ตำแหน่งของคุณ พร้อมป้ายชื่อธุรกิจ
`/delblip`	ลบ blip ที่คุณสร้างจากแผนที่

## 🎨 [EN] Configuration
You can customize the appearance of the blip in `client.lua:`
`SetBlipSprite(main, 1)      -- Change icon
SetBlipScale(main, 1.0)     -- Set size
SetBlipColour(main, 2)      -- Set color`

## 🎨 [TH] การตั้งค่า
คุณสามารถปรับแต่งลักษณะของ blip ได้ที่ `client.lua:`
`SetBlipSprite(main, 1)      -- เปลี่ยนไอคอน
SetBlipScale(main, 1.0)     -- ขนาด
SetBlipColour(main, 2)      -- สี`

## 📁 [EN] File Structure
`sk_blip/
├── client.lua        # Client-side logic for blips
├── server.lua        # Server-side management
├── fxmanifest.lua    # Resource metadata`

## 📁 [TH] โครงสร้างไฟล์
`sk_blip/
├── client.lua        # จัดการ blip ฝั่ง Client
├── server.lua        # จัดการข้อมูลและการซิงก์ฝั่ง Server
├── fxmanifest.lua    # ไฟล์ข้อมูล resource`

## 👤 [EN] Credits
- SK Official - Script Developer
- Built with QBCore Framework

## 👤 [TH] เครดิต
- SK Official - ผู้พัฒนา Script
- เขียนบนพื้นฐานของ QBCore Framework

## 📜 License
This project is licensed under the Apache License 2.0.
See the LICENSE file for full details.
