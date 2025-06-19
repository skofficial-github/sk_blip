# sk_blip

📍 A lightweight and easy-to-use **blip creation system** for FiveM QBCore Framework.  
Let players place a temporary map blip with a custom label using `/blip`, and remove it with `/delblip`.  
The blip will automatically expire after 30 minutes.

## 🚀 Features
- ✅ `/blip [Business Name]` to place a map marker
- ⏱️ Blip expires automatically after **30 minutes**
- ⚠️ Warns 5 minutes before expiration
- ❌ `/delblip` to remove your own blip
- 🔁 Blip syncs when resource restarts
- 📡 Server-client sync via custom events

## 📦 Requirements
- FiveM server with **QBCore** framework
- Recommended FXServer version: `cerulean`

## ⚙️ Installation
1. Clone or download the resource into your `resources` folder:
   ```bash
   git clone https://github.com/yourusername/sk_blip.git
2. Add this to your server.cfg: `ensure sk_blip`
3. Done! Ready to use.


## 💬 Commands
```bash
/blip [Business Name]	Create a blip with the specified label
/delblip	              Remove your active blip from the map
```

## 🎨 Configuration
You can customize the appearance of the blip in `client.lua:`
```bash
SetBlipSprite(main, 1)      -- Change icon
SetBlipScale(main, 1.0)     -- Set size
SetBlipColour(main, 2)      -- Set color`
```

## 📁 File Structure
```bash
sk_blip/
├── client.lua        # Client-side logic for blips
├── server.lua        # Server-side management
├── fxmanifest.lua    # Resource metadata
```

## 👤 Credits
- SK Official - Script Developer
- Built with QBCore Framework

## 📜 License
This project is licensed under the Apache License 2.0.
See the LICENSE file for full details.
