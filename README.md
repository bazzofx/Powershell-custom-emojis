#### **Description**

This PowerShell script allows you to display emojis dynamically in the console with customizable foreground and background colors. The script is designed to:

- Convert hexadecimal Unicode values to integers.
- Generate and render emojis with specific styling using `Write-Host`.
- Dynamically iterate through Unicode ranges to display a sequence of emojis.

This can be used for projects, fun console outputs, or themed terminal presentations.

* * *

#### **Features**

1. **Custom Emoji Display**: Display emojis with specified Unicode values, foreground, and background colors.
2. **Dynamic Looping**: Automatically generate and display a series of emojis within a specified Unicode range.
3. **Color Customization**: Allows for easy customization of text and background colors for each emoji.
4. **Interactive Console Experience**: Includes delays between outputs for better visualization of the emoji sequences.

* * *

#### **Usage**

1. **Function Definition**

    - The `emoji`function takes the following parameters:
        - `$hexValue`: Hexadecimal Unicode value of the emoji.
        - `$fgColor`: Foreground color (text color).
        - `$bgColor`: Background color.

    Example:

        powershellCopy codeemoji "1F525" "Red" "Black" # Displays a fire emoji 🔥 with red text on a black background.
2. **Dynamic Loop**

    - The loop in the script generates Unicode values dynamically, starting from `1F300` to `1F999`.
    - Each emoji is displayed with a short delay for a smooth sequential output.

    Example:

        powershellCopy codeFor ($i = 300; $i -lt 999; $i++) { $value = "1F$i" emoji $value "White" "Blue" Write-Host "$value" Start-Sleep -Milliseconds 50}
3. **Sample Usage**

    - Static examples of emoji usage:

            powershellCopy codeemoji "1F373" "Black" "Green" # Magnifier emoji 🍳emoji "1F525" "Red" "Black" # Fire emoji 🔥emoji "1F441" "Black" "Green" # Eye emoji 👁emoji "1F480" "Black" "Red" # Skull emoji 💀
4. **Custom Emojis**

    - You can include meaningful emojis in your projects with relevant labels:

            powershellCopy codeemoji "1F511" "White" "Cyan" # Key 🔑emoji "1F516" "White" "Blue" # Ticket 🔖emoji "1F542" "White" "Blue" # Cross 🕂

* * *

#### **Prerequisites**

- **PowerShell**: Ensure you are running a compatible version of PowerShell on your system.
- **Unicode Support**: The terminal must support Unicode for emojis to display correctly.

* * *

#### **Parameters**

| Parameter | Description | Example |
| --- | --- | --- |
| `$hexValue` | Hexadecimal Unicode value of the emoji. | `"1F525"` |
| `$fgColor` | Foreground (text) color. | `"Red"` |
| `$bgColor` | Background color for the emoji display. | `"Black"` |

* * *

#### **Example Output**

Run the following commands in your PowerShell console:

    powershellCopy codeemoji "1F525" "Red" "Black" # Fire emoji 🔥emoji "1F511" "White" "Cyan" # Key emoji 🔑

Output:

- Fire emoji (`🔥`) displayed with red text on a black background.
- Key emoji (`🔑`) displayed with white text on a cyan background.

* * *

#### **Customizations**

- Modify the loop range (`$i`) to display emojis in a different Unicode range.
- Adjust `Start-Sleep` duration for faster or slower emoji sequences.
- Replace colors to match your project's theme or preference.

* * *

#### **Disclaimer**

This script relies on Unicode support and PowerShell features. Some Unicode values might not render correctly on systems with limited emoji support.

Happy emoji scripting! 😊
