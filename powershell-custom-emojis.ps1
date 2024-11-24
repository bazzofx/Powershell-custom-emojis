function emoji ($hexValue,$fgColor,$bgColor){
#Firstly, the code below will convert the Hex value to Integer
$EmojiIcon = [System.Convert]::toInt32("$hexValue",16)
#Secondly, convert the Unicode point which is stored in $EmojiIcon to UTF-16 String
 $emoji = Write-Host -ForegroundColor $fgColor -BackgroundColor $bgColor ([System.Char]::ConvertFromUtf32($EmojiIcon)) -NoNewline
 return $emoji
 } # This adds the emojis



For ($i = 300; $i -lt 999; $i++) {
    # Create a hex value dynamically
    $value = "1F$i"   # Converts the number to a zero-padded hexadecimal (4 digits)
    # Display the emoji
    emoji $value "White" "Blue"
    Write-Host  "$value"
    # Pause briefly before displaying the next emoji
    Start-Sleep -Milliseconds 50
}

#usage example
        emoji 1F373 black green #magnifier 🍳
        emoji 1F571 black red #skull2 🕱
        emoji 1F525 red   black #fire 🔥
        emoji 1F441 black green #eye 👁
        Write-Host "Custom Emojis on your project" -ForegroundColor Green
        emoji 1F480 black red #skull 💀
        emoji 1F511 white cyan #key 🔑
        emoji 1F516 white blue #ticket 🔖
        emoji 1F542 white blue #cross 🕂
