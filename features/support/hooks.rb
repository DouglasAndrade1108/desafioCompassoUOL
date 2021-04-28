require "base64"

After do
    shot = page.save_screenshot("log/screenshot.png")
    shot_b64 = Base64.encode64(File.open(shot, "rb").read)
    embed(shot_b64, "image/png", "Screenshot")
end