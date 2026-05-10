$path = "c:\Users\Ishan Singh\code\rowan-toys\dev\index.html"
$content = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

$content = [regex]::Replace($content, '<span class="search-icon">.*?</span>', '<span class="search-icon"><i class="fa fa-search"></i></span>')
$content = [regex]::Replace($content, 'placeholder="Search.*?"', 'placeholder="Search..."')
$content = [regex]::Replace($content, '<h3>.*?Could Not Load Data</h3>', '<h3><i class="fa fa-exclamation-triangle"></i> Could Not Load Data</h3>')
$content = [regex]::Replace($content, '<button class="btn-retry" onclick="location\.reload\(\)">.*?Retry</button>', '<button class="btn-retry" onclick="location.reload()"><i class="fa fa-refresh"></i> Retry</button>')

$content = [regex]::Replace($content, 'font-weight:600;">.*?Filters.*?</button>', 'font-weight:600;"><i class="fa fa-cog"></i> Filters <i class="fa fa-chevron-down"></i></button>')

$content = [regex]::Replace($content, '<button class="chip s-lim" id="chip-lim" onclick="toggleLim\(\)">.*?Limited Stock</button>', '<button class="chip s-lim" id="chip-lim" onclick="toggleLim()"><i class="fa fa-hourglass-half"></i> Limited Stock</button>')
$content = [regex]::Replace($content, '<button class="chip s-in" onclick="toggleStatus\(''In Stock'',this\)">.*?In Stock</button>', '<button class="chip s-in" onclick="toggleStatus(''In Stock'',this)"><i class="fa fa-circle"></i> In Stock</button>')
$content = [regex]::Replace($content, '<button class="chip s-low" onclick="toggleStatus\(''Low Stock'',this\)">.*?Low Stock</button>', '<button class="chip s-low" onclick="toggleStatus(''Low Stock'',this)"><i class="fa fa-circle"></i> Low Stock</button>')
$content = [regex]::Replace($content, '<button class="chip s-out" onclick="toggleStatus\(''Out of Stock'',this\)">.*?Out of Stock</button>', '<button class="chip s-out" onclick="toggleStatus(''Out of Stock'',this)"><i class="fa fa-circle"></i> Out of Stock</button>')
$content = [regex]::Replace($content, '<button class="chip s-over" onclick="toggleStatus\(''Overstock'',this\)">.*?Overstock</button>', '<button class="chip s-over" onclick="toggleStatus(''Overstock'',this)"><i class="fa fa-circle"></i> Overstock</button>')

$content = [regex]::Replace($content, '<button class="btn-exp" id="btn-print" onclick="prepareAndPrint\(\)">.*?PDF</button>', '<button class="btn-exp" id="btn-print" onclick="prepareAndPrint()"><i class="fa fa-print"></i> PDF</button>')
$content = [regex]::Replace($content, 'onclick="downloadAdminCSV\(\)">.*?Admin Links</button>', 'onclick="downloadAdminCSV()"><i class="fa fa-lock"></i> Admin Links</button>')

$content = [regex]::Replace($content, '.{1,4}<strong id="st-in">', '<i class="fa fa-circle" style="color:var(--green)"></i> <strong id="st-in">')
$content = [regex]::Replace($content, '.{1,4}<strong id="st-low">', '<i class="fa fa-circle" style="color:var(--amber)"></i> <strong id="st-low">')
$content = [regex]::Replace($content, '.{1,4}<strong id="st-out">', '<i class="fa fa-circle" style="color:var(--red)"></i> <strong id="st-out">')
$content = [regex]::Replace($content, '.{1,4}<strong id="st-over">', '<i class="fa fa-circle" style="color:var(--blue)"></i> <strong id="st-over">')

$content = [regex]::Replace($content, 'margin-bottom: 6px;">.*?\s*Export Preview</h2>', 'margin-bottom: 6px;"><i class="fa fa-print"></i> Export Preview</h2>', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$content = [regex]::Replace($content, '<h2>.*?Order Details</h2>', '<h2><i class="fa fa-clipboard"></i> Order Details</h2>')
$content = [regex]::Replace($content, '<button class="btn-dealer-confirm" onclick="confirmAndDownload\(\)">.*?Download Order</button>', '<button class="btn-dealer-confirm" onclick="confirmAndDownload()"><i class="fa fa-download"></i> Download Order</button>')

$content = [regex]::Replace($content, 'onclick="openCart\(\)">\s*.*?<div id="fab-badge">', 'onclick="openCart()">`r`n    <i class="fa fa-shopping-cart"></i>`r`n    <div id="fab-badge">', [System.Text.RegularExpressions.RegexOptions]::Singleline)
$content = [regex]::Replace($content, '<button class="mclose" onclick="closeCart\(\)">.*?</button>', '<button class="mclose" onclick="closeCart()"><i class="fa fa-times"></i></button>')
$content = [regex]::Replace($content, '<button class="btn-dl-order" onclick="openDealerModal\(\)">.*?Download Order \(Excel\)</button>', '<button class="btn-dl-order" onclick="openDealerModal()"><i class="fa fa-download"></i> Download Order (Excel)</button>')

$content = [regex]::Replace($content, 'toast\(''.*?Live stock data synced''', 'toast(''<i class="fa fa-check"></i> Live stock data synced''')
$content = [regex]::Replace($content, 'btn\.innerHTML = ''.*?Filters.*?'';', 'btn.innerHTML = ''<i class="fa fa-cog"></i> Filters <i class="fa fa-chevron-up"></i>'';')
$content = [regex]::Replace($content, 'innerHTML = ''<div class="ph"><span class="ico">.*?</span></div>'';', 'innerHTML = ''<div class="ph"><span class="ico"><i class="fa fa-image"></i></span></div>'';')

$content = [regex]::Replace($content, '<span class="badge b-hot">.*?Hot</span>', '<span class="badge b-hot"><i class="fa fa-fire"></i> Hot</span>')
$content = [regex]::Replace($content, '<span class="badge b-new">.*?New</span>', '<span class="badge b-new"><i class="fa fa-star"></i> New</span>')
$content = [regex]::Replace($content, '<span class="badge b-lim">.*?Limited</span>', '<span class="badge b-lim"><i class="fa fa-hourglass-half"></i> Limited</span>')
$content = [regex]::Replace($content, '<span class="badge b-noi">.*?Needed</span>', '<span class="badge b-noi"><i class="fa fa-camera"></i> Needed</span>')

$content = [regex]::Replace($content, 'toast\(''.*?Article is out of stock''', 'toast(''<i class="fa fa-exclamation-triangle"></i> Article is out of stock''')
$content = [regex]::Replace($content, 'toast\(''.*?Order downloaded!''', 'toast(''<i class="fa fa-check"></i> Order downloaded!''')
$content = [regex]::Replace($content, 'btn\.innerHTML = ''.*?Prep\.\.\.'';', 'btn.innerHTML = ''<i class="fa fa-hourglass-half"></i> Prep...'';')

$content = [regex]::Replace($content, '<span class="ico" style="font-size:28px">.*?</span>', '<span class="ico" style="font-size:28px"><i class="fa fa-image"></i></span>')
$content = [regex]::Replace($content, '<span class="ico">.*?</span><span class="lbl">Image Needed</span>', '<span class="ico"><i class="fa fa-camera"></i></span><span class="lbl">Image Needed</span>')
$content = [regex]::Replace($content, '<span class="ico">.*?</span><span class="lbl">No Image</span>', '<span class="ico"><i class="fa fa-camera"></i></span><span class="lbl">No Image</span>')
$content = [regex]::Replace($content, '<span class="ico">.*?</span><span class="lbl">Image Error</span>', '<span class="ico"><i class="fa fa-exclamation-triangle"></i></span><span class="lbl">Image Error</span>')

$content = [regex]::Replace($content, '<button class="mclose" onclick="closeModal\(\)">.*?</button>', '<button class="mclose" onclick="closeModal()"><i class="fa fa-times"></i></button>')
$content = [regex]::Replace($content, '<span class="badge b-hot">.*?Hot Seller</span>', '<span class="badge b-hot"><i class="fa fa-fire"></i> Hot Seller</span>')
$content = [regex]::Replace($content, '<span class="badge b-new">.*?New Inward</span>', '<span class="badge b-new"><i class="fa fa-star"></i> New Inward</span>')
$content = [regex]::Replace($content, '<span class="badge b-lim">.*?Limited Stock</span>', '<span class="badge b-lim"><i class="fa fa-hourglass-half"></i> Limited Stock</span>')
$content = [regex]::Replace($content, '<span class="badge b-noi">.*?Image Needed</span>', '<span class="badge b-noi"><i class="fa fa-camera"></i> Image Needed</span>')

$content = [regex]::Replace($content, 'p\.mrp \? ''.*?'' \+ fmt\(p\.mrp\)', 'p.mrp ? ''&#8377;'' + fmt(p.mrp)')
$content = [regex]::Replace($content, '''<div class="csp">SP .*?'' \+ fmt\(p\.sp\)', '''<div class="csp">SP &#8377;'' + fmt(p.sp)')
$content = [regex]::Replace($content, 'esc\(p\.status \|\| ''.*?''\)', 'esc(p.status || ''&mdash;'')')
$content = [regex]::Replace($content, '<tr><td>MRP</td><td>'' \+ \(p\.mrp \? ''.*?'' \+ fmt\(p\.mrp\)', '<tr><td>MRP</td><td>'' + (p.mrp ? ''&#8377;'' + fmt(p.mrp)')
$content = [regex]::Replace($content, '<tr><td>Selling Price</td><td>'' \+ \(p\.sp \? ''.*?'' \+ fmt\(p\.sp\)', '<tr><td>Selling Price</td><td>'' + (p.sp ? ''&#8377;'' + fmt(p.sp)')
$content = [regex]::Replace($content, '''<tr><td>Age Group</td><td>'' \+ \(esc\(p\.age\) \|\| ''.*?''\)', '''<tr><td>Age Group</td><td>'' + (esc(p.age) || ''&mdash;'')')
$content = [regex]::Replace($content, '''<tr><td>GST %</td><td>'' \+ \(esc\(p\.gst\) \|\| ''.*?''\)', '''<tr><td>GST %</td><td>'' + (esc(p.gst) || ''&mdash;'')')
$content = [regex]::Replace($content, '''<tr><td>EAN Code</td><td>'' \+ \(esc\(p\.ean\) \|\| ''.*?''\)', '''<tr><td>EAN Code</td><td>'' + (esc(p.ean) || ''&mdash;'')')

[System.IO.File]::WriteAllText($path, $content, [System.Text.Encoding]::UTF8)
