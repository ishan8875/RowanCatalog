$content = [System.IO.File]::ReadAllText("dev/index.html", [System.Text.Encoding]::UTF8)

$content = $content.Replace('<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=DM+Sans:wght@400;500;600;700&display=swap"', '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">`r`n  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=DM+Sans:wght@400;500;600;700&display=swap"')

$replacements = [ordered]@{
    "ðŸ–¨ï¸ " = "<i class=`"fa fa-print`"></i>"
    "âš ï¸ " = "<i class=`"fa fa-exclamation-triangle`"></i>"
    "âš™ï¸ " = "<i class=`"fa fa-cog`"></i>"
    "ðŸ” " = "<i class=`"fa fa-search`"></i>"
    "âš " = "<i class=`"fa fa-exclamation-triangle`"></i>"
    "â†º" = "<i class=`"fa fa-refresh`"></i>"
    "ðŸ”½" = "<i class=`"fa fa-chevron-down`"></i>"
    "ðŸ”¼" = "<i class=`"fa fa-chevron-up`"></i>"
    "ðŸ”¥" = "<i class=`"fa fa-fire`"></i>"
    "âœ¨" = "<i class=`"fa fa-star`"></i>"
    "â ³" = "<i class=`"fa fa-hourglass-half`"></i>"
    "âœ•" = "<i class=`"fa fa-times`"></i>"
    "â— " = "<i class=`"fa fa-circle`"></i>"
    "ðŸŸ¢" = "<i class=`"fa fa-circle`" style=`"color:var(--green)`"></i>"
    "ðŸŸ¡" = "<i class=`"fa fa-circle`" style=`"color:var(--amber)`"></i>"
    "ðŸ”´" = "<i class=`"fa fa-circle`" style=`"color:var(--red)`"></i>"
    "ðŸ”µ" = "<i class=`"fa fa-circle`" style=`"color:var(--blue)`"></i>"
    "ðŸ“Š" = "<i class=`"fa fa-bar-chart`"></i>"
    "ðŸ” " = "<i class=`"fa fa-lock`"></i>"
    "ðŸ“‹" = "<i class=`"fa fa-clipboard`"></i>"
    "ðŸ“¥" = "<i class=`"fa fa-download`"></i>"
    "ðŸ›’" = "<i class=`"fa fa-shopping-cart`"></i>"
    "âœ“" = "<i class=`"fa fa-check`"></i>"
    "â—Œ" = "<i class=`"fa fa-image`"></i>"
    "ðŸ“·" = "<i class=`"fa fa-camera`"></i>"
    "â€”" = "&mdash;"
    "â‚¹" = "&#8377;"
}

foreach ($key in $replacements.Keys) {
    $content = $content.Replace($key, $replacements[$key])
}

[System.IO.File]::WriteAllText("dev/index.html", $content, [System.Text.Encoding]::UTF8)
